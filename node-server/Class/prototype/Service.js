class Service {
    static uid = "";
    static name = "";
    static triggerPrototypes = [];
    static actions = [];
    triggers;
    params;

    constructor(params) {
        this.params = params;
        this.triggers = [];
    }

    paramsValidator() {
        return (this.params);
    }

    static getParamsPattern() {
        return {};
    }

    // addTrigger(trigger) {
    //     if (this.triggers.find(trigger))
    //         return false;

    //     this.#triggers.push(trigger);

    //     console.log("================TRIGGERS========================")
    //     console.log(this.#triggers);
    //     return true;
    // }

    static getTriggerPrototype(uid) {
        let res = Service.triggerPrototypes.find(el => el.uid == uid );
        return res;
    }

    getTrigger(uid) {
        let res = this.triggers.find(el => el.uid == uid );
        return res;
    }

}

module.exports = Service;