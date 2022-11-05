class Action {
	static uid = "";
	static name = "";
	static description = "";
    service;
	params;

    constructor(params = null, service = null) {
        if (this.constructor === Action) {
          throw new TypeError('Abstract class "Action" cannot be instantiated directly');
        }

        this.params = params;
        this.service = service;
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
            params: this.getParamsPattern()
        };
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

    async execute() {
        if (this.constructor === Action) {
            throw new TypeError('you need to implement an execute function');
        }
    }

}

module.exports = Action;