class Service {
    static uid = "";
    static name = "";
    static description = "";
    static triggerPrototypes = [];
    static actionPrototypes = [];
    
    triggers;
    actions;

    params;

    constructor(params) {
        this.params = params;
        this.triggers = [];
        this.actions = [];
    }


    async destructor() {
        for (let trigger of this.triggers) {
            await this.disableTrigger(trigger)
        }
        delete this;
    }

    paramsValidator() {
        return (this.params);
    }

    static getParamsPattern() {
        return {};
    }

    static getTriggerPrototype(uid) {
        let res = this.triggerPrototypes.find(el => el.uid == uid );
        return res;
    }

    static getActionPrototype(uid) {
        let res = this.actionPrototypes.find(el => el.uid == uid );
        return res;
    }

    static getTriggerPrototypes() {
        let res = [];
        this.triggerPrototypes.forEach(el => {
            let val = {};
            val.name = el.uid;
            val.description = el.description;
            res.push(val);
        });
        return res;
    }

    static getJsonTriggers() {
        let res = [];
        this.triggerPrototypes.forEach(el => {
            res.push(el.getJsonInfos());
        });
        return res;
    }

    static getJsonActions() {
        let res = [];
        this.actionPrototypes.forEach(el => {
            res.push(el.getJsonInfos());
        });
        return res;
    }


    static getActionPrototypes() {
        let res = [];
        this.actionPrototypes.forEach(el => {
            let val = {};
            val.name = el.uid;
            val.description = el.description;
            res.push(val);
        });
        return res;
    }

    getTrigger(uid) {
        let res = this.triggers.find(el => el.uid == uid );
        return res;
    }

    getAction(uid) {
        let res = this.actions.find(el => el.uid == uid );
        return res;
    }

    async enableTrigger(uid, params = {}) {}

    async enableAction(uid, params = {}) {}

    async disableTrigger(trigger) {
        if (!trigger)
            return false;

        trigger.enabled = false
        return true;
    }

}

module.exports = Service;