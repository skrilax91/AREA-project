class Trigger {
    static uid = "";
    static name = "";
    static description = "";
    enabled;
    params;

    constructor(params = null) {
        if (this.constructor === Trigger) {
          throw new TypeError('Abstract class "Action" cannot be instantiated directly');
        }
        this.enabled = true;
        this.params = params;
    }

    paramsValidator() {
        return (this.params);
    }

    static getParamsPattern() {
        return {};
    }

    setParams(params) {
        this.params = params;
    }

    setParam(index, value = null) {
        this.params[index] = value;
    }

    async process() {}
}

module.exports = Trigger;