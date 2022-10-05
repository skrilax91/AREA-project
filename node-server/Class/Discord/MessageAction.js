const Action = require("../prototype/Action");

class MessageAction extends Action {
    static uid = "discord_message_action";
	static name = "Send message";
	static description = "Send a Discord message";

    paramsValidator() {
        if (!super.paramsValidator())
            return false;

        let pattern = MessageAction.getParamsPattern();

        for (let param of pattern) {
            if (!this.params[param.name])
                return false;

            if (typeof this.params[param.name] != param.type)
                return false;
        }
        if (this.params.content && this.params.content.length > 2000)
            return false;

        return true;
    }

    static getParamsPattern() {
        return [
            {
                name: "content",
                type: "string",
                description: "Content of the message"
            },
            {
                name: "username",
                type: "string",
                description: "The username of the sender"
            }
        ];
    }

	setParams(params) {
        this.params = params;
    }

    setParam(index, value = null) {
        this.params[index] = value;
    }

    async execute(config) {

        if (!this.paramsValidator()) {
            console.log("Can't execute " + MessageAction.name + " Action, bad params");
            return null;
        }

        await axios.post(this.service.params.webhook_url, {
            content: this.params.content,
            username: this.params.username
        }).then(function (response) {
            console.log(response);
        }).catch(function (error) {
            console.log(error);
        });

        let infos = this.params;

        console.log('service_discord: message sent');
        console.log(infos);
    }
}

module.exports = MessageAction;