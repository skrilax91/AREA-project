const Action = require("../prototype/Action");
const { Webhook } = require('discord-webhook-node');
const jnestedReplace = require('json-nested-replace');

class MessageAction extends Action {
    static uid = "discord_message_action";
	static name = "Send message";
	static description = "Send a message via a webhook";

    constructor(params = null, service = null) {
        super(params, service);
        this.hook = new Webhook(this.params.webhook);
    }

    static getParamsPattern() {
        return [
            {
                name: "webhook",
                type: "string",
                description: "The webhook url"
            },
            {
                name: "author",
                type: "string",
                description: "The message author"
            },
            {
                name: "message",
                type: "string",
                description: "The message of... message"
            }
        ];
    }

    async execute(config) {
        if (!this.constructor.paramsValidator(this.params)) {
            console.log("Can't execute " + EventAction.name + " Action, bad params");
            return null;
        }

        let infos = JSON.parse(JSON.stringify(this.params));

        Object.keys(config).forEach(key => {
            if (config[key])
                infos = jnestedReplace(infos, "{" + key + "}", config[key], ["inline"]);
        });

        this.hook.setUsername(infos.author);
        this.hook.setAvatar(infos.avatar);
        this.hook.send(infos.message);
    }
}

module.exports = MessageAction;