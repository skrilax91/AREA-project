'use strict';
const { Model } = require('sequelize');
const bcrypt = require('bcrypt');

module.exports = (sequelize, DataTypes) => {
  class User extends Model {
    async setPassword(password) {
      const salt = await bcrypt.genSalt(10);
      this.password = await bcrypt.hash(password, salt);
    }

    async checkPassword(password) {
      return await bcrypt.compare(password, this.password);
    }

    async getServices() {
      let services = ServiceManager.getServices();
      let res = [];

      services.forEach(el => {
          if (this.getServiceToken(el.getId()))
              res.push(el);
      });
      
      return res;
    }

    async getAreaById(id) {
      let areaList = await this.getAreas({ where: { id } });

      if (!areaList.length)
          return null;

      return areaList[0];
    }

    async getServiceToken(id) {
      return (this.tokens[id]) ? this.tokens[id] : null;
    }
    
    static associate(models) {
      User.hasMany(models.AuthToken, {
        foreignKey: 'userId',
      })
      User.hasMany(models.Area, {
        foreignKey: 'userId',
      })
    }
  }
  User.init({
    email: DataTypes.STRING,
    tokens: DataTypes.JSON,
    password: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'User',
  });
  return User;
};