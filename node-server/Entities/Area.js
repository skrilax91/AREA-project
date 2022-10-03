const { DataTypes, Model } = require('sequelize');
const ServiceManager = require('../Services/ServiceManager');

class Area extends Model
{
    services = [];

    async instanciate() {
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
}

Area.init({
    name: { type: DataTypes.STRING, allowNull: false },
    description: { type: DataTypes.STRING, allowNull: false },
    config: { type: DataTypes.JSON, allowNull: false, defaultValue: {} },
    active: { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: true },
}, { sequelize: global.database });

database.models.User.hasMany(Area)
Area.belongsTo(database.models.User);