const { DataTypes } = require('sequelize');


const AuthToken = database.define('AuthToken', {
  token: DataTypes.STRING,
});

database.models.User.hasMany(AuthToken)
AuthToken.belongsTo(database.models.User);