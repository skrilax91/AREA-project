const Service = require("../prototype/Service");
const axios = require('axios');
const MessageAction = require("../Discord/MessageAction");


class DiscordService extends Service {
    static uid = "service_discord";
    static name = "Service Discord";

    static actionPrototypes = [
        MessageAction
    ];

    constructor() {
        super();
    }

    paramsValidator() {
        if (!super.paramsValidator())
            return false;

        let pattern = DiscordService.getParamsPattern();

        pattern.forEach(el => {
            if (!this.params[el.name])
                return false;

            if (typeof this.params[el.name] != el.type)
                return false;
        });

        return true;
    }

    getTrigger(uid) {
        let res = this.triggers.find(el => el.uid == uid );
        return res;
    }

    getAction(uid) {
        let res = this.actions.find(el => el.uid == uid );
        return res;
    }

    static getParamsPattern() {
        return [
            {
                name: "webhook_url",
                type: "string",
                description: "The webhook url of the desired text channel"
            }
        ];
    }

    async enableAction(uid, params = {}) {
        console.log("Enabling action...");
        if (this.getAction(uid))
            return false;
        
        console.log("Getting action proto...");
        let proto = DiscordService.getActionPrototype(uid);

        if (!proto) {
            console.log("Can't find prototype");
            return false;
        }

        let action = new proto(params, this);
        
        this.actions.push(action);
        console.log("================ACTION========================")
        console.log(this.actions);
        return action;
    }
}

module.exports = DiscordService