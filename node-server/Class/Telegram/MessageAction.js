const Action = require("../prototype/Action");

class MessageAction extends Action {
    static uid = "telegram_message_action";
	static name = "Send message using a bot";
	static description = "Send a Telegram message";

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

        await axios.post("https://api.telegram.org/bot" + this.param.token + "/sendMessage", {
            chat_id: this.params.chat_id,
            text: this.params.content
        }).then(function (response) {
            console.log(response);
        }).catch(function (error) {
            console.log(error);
        });

        let infos = this.params;

        console.log('service_telegram: message sent');
        console.log(infos);
    }
}

module.exports = MessageAction;