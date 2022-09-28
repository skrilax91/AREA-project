const TwitchService = require("../Class/Services/TwitchService");

class ServiceManager {
    static services = [
        TwitchService
    ];

    static getService(uid) {
        let res = ServiceManager.services.find(el => el.uid == uid );
        return res;
    }
}

module.exports = ServiceManager