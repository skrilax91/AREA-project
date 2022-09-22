const { DataTypes } = require('sequelize');


const AuthToken = global.database.define('AuthToken', {
  token: DataTypes.STRING,
});

global.database.models.User.hasMany(AuthToken)