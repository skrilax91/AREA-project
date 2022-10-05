const CalendarService = require("../Class/Services/CalendarService");
const TwitchService = require("../Class/Services/TwitchService");
const jnestedReplace = require('json-nested-replace');

class ServiceManager {
    static services = [
        TwitchService,
        CalendarService
    ];

    static getService(uid) {
        let res = ServiceManager.services.find(el => el.uid == uid );
        return res;
    }

    static getAboutServices() {
        let res = [];
        ServiceManager.services.forEach(el => {
            let service = {};
            service.name = el.uid;
            service.actions = el.getTriggerPrototypes();
            service.reactions = el.getActionPrototypes();
            res.push(service);
        });
        return res;
    }

    static createService(sid) {
        let proto = ServiceManager.getService(sid);

        if (!proto)
            return null;
        return (new proto());
    }

    static FormatInfos(config, infos) {

        Object.keys(config).forEach(key => {
            infos = jnestedReplace(infos, "{" + key + "}", config[key]);
        });

        return infos;
    }
}

module.exports = ServiceManager