const { DataTypes, Model } = require('sequelize');
const bcrypt = require("bcrypt");

class User extends Model
{
    async setPassword(password) {
        const salt = await bcrypt.genSalt(10);
        this.password = await bcrypt.hash(password, salt);
    }

    async checkPassword(password) {
        return await bcrypt.compare(password, this.password);
    }
}

User.init({

  email: { type: DataTypes.STRING, allowNull: false, unique: true },
  password: { type: DataTypes.STRING, allowNull: false},

}, { sequelize: global.database });
