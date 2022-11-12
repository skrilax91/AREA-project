const Action = require("../prototype/Action");
const jnestedReplace = require('json-nested-replace');

class SendWebHookAction extends Action {
    static uid = "send_webhook_action";
	static name = "Send a WebHook";
	static description = "Send a json to an url";

    constructor(params = null, service = null) {
        super(params, service);
    }

    static getParamsPattern() {
        return [
            {
                name: "url",
                type: "string",
                description: "The webhook url",
                required: true
            },
            {
                name: "method",
                type: "string",
                description: "the method of the call",
                required: true
            },
        ];
    }

    async execute(config) {
        if (!this.constructor.paramsValidator(this.params)) {
            console.log("Can't execute " + EventAction.name + " Action, bad params");
            return null;
        }

        await axios({
            method: this.params.method,
            url: this.params.url,
            data: config
        });
    }
}

module.exports = SendWebHookAction;