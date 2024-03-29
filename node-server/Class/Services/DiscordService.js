const Service = require("../prototype/Service");
const axios = require('axios');
const MessageAction = require("../Discord/MessageAction");
const EmbedMessageAction = require("../Discord/EmbedMessageAction");

class DiscordService extends Service {
    static uid = "service_discord";
    static name = "Service Discord";

    static triggerPrototypes = [];
    static actionPrototypes = [
        MessageAction,
        EmbedMessageAction
    ];

    paramsValidator() {
        if (!super.paramsValidator())
            return false;

        let pattern = this.constructor.getParamsPattern();

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
        return [];
    }

    async enableTrigger(uid, params = {}) {
        if (this.getTrigger(uid))
            return false;
        
        let proto = this.constructor.getTriggerPrototype(uid);

        if (!proto) {
            console.log("Can't find prototype");
            return false;
        }

        let trigger = new proto(params, this);
        
        this.triggers.push(trigger);
        console.log("================TRIGGERS========================")
        console.log(this.triggers);
        return trigger;
    }

    async enableAction(uid, params = {}) {
        console.log("Enabling action...");
        if (this.getAction(uid))
            return false;
        
        console.log("Getting action proto...");
        let proto = this.constructor.getActionPrototype(uid);

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

module.exports = DiscordService;