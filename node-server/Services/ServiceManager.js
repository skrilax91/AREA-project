const TwitchService = require("../Class/Services/TwitchService");

class ServiceManager {
    static services = [
        TwitchService
    ];

    static getService(uid) {
        let res = ServiceManager.services.find(el => el.uid == uid );
        return res;
    }

    static createService(sid) {
        let proto = ServiceManager.getService("service_twitch");

        if (!proto)
            return null;
        return (new proto());

    }
}

module.exports = ServiceManager