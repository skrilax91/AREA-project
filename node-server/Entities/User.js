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

    async getServices() {
        let services = ServiceManager.getServices();
        let res = [];

        services.forEach(el => {
            if (this.getServiceToken(el.getId()))
                res.push(el);
        });
        
        return res;
    }

    async getServiceToken(id) {
        return (this.tokens[id]) ? this.tokens[id] : null;
    }
}

User.init({

  email: { type: DataTypes.STRING, allowNull: false },
  tokens: { type: DataTypes.JSON },
  password: { type: DataTypes.STRING, allowNull: false},

}, { sequelize: global.database });
