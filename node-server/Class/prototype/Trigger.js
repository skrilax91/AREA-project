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

    static paramsValidator(params) {
        if (!params)
            return false;

        let pattern = this.getParamsPattern();

        for (let param of pattern) {
            if (!param.required)
                continue;

            if (!params[param.name]) {
                if (!param.mutualized)
                    return false;
                
                let find = false;
                for (let mut of param.mutualized)
                    if (params[mut])
                        find = true;
                
                if (!find)
                    return false;
            } else if (typeof params[param.name] != param.type)
                return false;
        }
        return true;
    }

    static getJsonInfos() {
        return {
            uid: this.uid,
            name: this.name,
            description: this.description,
            params: this.getParamsPattern(),
            returns: this.getReturnsPattern()
        };
    }

    static getReturnsPattern() {
        return [];
    }

    static getParamsPattern() {
        return [];
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