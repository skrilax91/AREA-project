const { DataTypes, Model } = require('sequelize');

class Area extends Model
{

}

Area.init({
    name: { type: DataTypes.STRING, allowNull: false },
    description: { type: DataTypes.STRING, allowNull: false },
    action: { type: DataTypes.JSON, allowNull: false },
    reaction: { type: DataTypes.JSON, allowNull: false },
    acttive: { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: true },
}, { sequelize: global.database });

database.models.User.hasMany(Area)
Area.belongsTo(database.models.User);