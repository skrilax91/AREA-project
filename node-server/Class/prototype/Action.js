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

	paramsValidator() {
        return (this.params);
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