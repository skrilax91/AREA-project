'use strict';
const { Model } = require('sequelize');
const ServiceManager = require('../Services/ServiceManager');

module.exports = (sequelize, DataTypes) => {
  class Area extends Model {
    
    services = [];
    loaded = false;

    async load() {
      await this.reload();
      if (this.active)
        return;

      let conf = this.config.services;

      for (const el of conf) {
        let service = this.addService(el.uid);

        if (el.actions) {
          for (const act of el.actions) {
            console.log("create action " + act.uid);
            await service.enableAction(act.uid, act.params);
          }
        }

        if (el.triggers) {
          for (const trig of el.triggers) {
            console.log("create trigger " + trig.uid);
            let trigger = await service.enableTrigger(trig.uid, trig.params);
            this.triggerLoop(trigger);
          }
        }
      }
      await this.update({ active: true });
    }

    async unload() {
      await this.reload();
      if (!this.active)
        return;

      for (let service of this.services) {
        await service.destructor();
      }

      this.services = [];
      await this.update({ active: false });
    }

    async triggerLoop(trigger) {
      while (true) {
        console.log("Awaiting new follow...");
        let res = await trigger.process();
        if (res == null)
          break;
        res.forEach(el => {
          this.services.forEach(sv => {
            sv.actions.forEach(action => {
              action.execute(el);
            });
          });
        })
      }
    }

    getService(uid) {
      let res = this.services.find(el => el.uid == uid );
      return res;
    }

    addService(sid) {
      let service = ServiceManager.createService(sid);
      if (!service)
        return false;
      this.services.push(service);
      return service;
    }

    static associate(models) {
      Area.belongsTo(models.User, {
        foreignKey: 'userId',
        onDelete: 'CASCADE'
      })
    }
  }
  Area.init({
    name: DataTypes.STRING,
    description: DataTypes.STRING,
    config: DataTypes.JSON,
    active: DataTypes.BOOLEAN,
    userId: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Area',
  });
  return Area;
};