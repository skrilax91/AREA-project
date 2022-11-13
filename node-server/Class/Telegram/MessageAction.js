const Action = require("../prototype/Action");

class MessageAction extends Action {
    static uid = "telegram_message_action";
	static name = "Send message using a bot";
	static description = "Send a Telegram message";

    static getParamsPattern() {
        return [
            {
                name: "token",
                type: "string",
                description: "The token of the Telegram bot",
                required: true
            },
            {
                name: "chatid",
                type: "integer",
                description: "The channel ID",
                required: true
            },
            {
                name: "content",
                type: "string",
                description: "Content of the message"
            }
        ];
    }

    async execute(config) {

        if (!this.paramsValidator()) {
            console.log("Can't execute " + MessageAction.name + " Action, bad params");
            return null;
        }

        let infos = JSON.parse(JSON.stringify(this.params));

        Object.keys(config).forEach(key => {
            if (config[key])
                infos = jnestedReplace(infos, "{" + key + "}", config[key], ["inline"]);
        });

        if (!infos.content)
            infos.content = "This is a sample message from AREA!";

        await axios.post("https://api.telegram.org/bot/" + infos.token + "/sendMessage", {
            chat_id: infos.chatid,
            text: infos.content
        }).then(function (response) {
            console.log(response);
        }).catch(function (error) {
            console.log(error);
        });

        console.log('service_telegram: message sent');
    }
}

module.exports = MessageAction;