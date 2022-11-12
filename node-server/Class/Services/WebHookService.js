const Service = require("../prototype/Service");
const axios = require('axios');
const SendWebHookAction = require("../WebHook/SendWebHookAction");


class WebHookService extends Service {
    static uid = "service_webhook";
    static name = "Service WebHook";
    static description = "This service provide possibility to trigger an area with an url, or call an url when area is triggered";

    static triggerPrototypes = [];
    static actionPrototypes = [
        SendWebHookAction
    ];

    constructor() {
        super();
    }

    paramsValidator() {
        if (!super.paramsValidator())
            return false;

        let pattern = WebHookService.getParamsPattern();

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
                name: "username",
                type: "string",
                description: "The username of the specified channel"
            }
        ];
    }

    async enableTrigger(uid, params = {}) {
        if (this.getTrigger(uid))
            return false;
        
        let proto = WebHookService.getTriggerPrototype(uid);

        if (!proto) {
            console.log("Can't find prototype");
            return false;
        }

        let trigger = new proto(params);
        
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
        let proto = WebHookService.getActionPrototype(uid);

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

module.exports = WebHookService