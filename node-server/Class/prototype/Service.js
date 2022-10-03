class Service {
    static uid = "";
    static name = "";
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
        let res = Service.triggerPrototypes.find(el => el.uid == uid );
        return res;
    }

    static getActionPrototype(uid) {
        let res = Service.actionPrototypes.find(el => el.uid == uid );
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