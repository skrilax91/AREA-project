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

}

module.exports = Service;