const Action = require("../prototype/Action");
const { Webhook, MessageBuilder } = require('discord-webhook-node');
const jnestedReplace = require('json-nested-replace');

class MessageAction extends Action {
    static uid = "discord_message_action";
	static name = "Send message";
	static description = "Send a message via a webhook";

    constructor(params = null, service = null) {
        super(params, service);
        this.hook = new Webhook(this.params.webhook);
    }

    paramsValidator() {
        if (!super.paramsValidator())
            return false;

        let pattern = this.constructor.getParamsPattern();

        for (let param of pattern) {
            if (!this.params[param.name])
                return false;

            if (typeof this.params[param.name] != param.type)
                return false;
        }

        return true;
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
            }
        ];
    }

    async execute(config) {
        if (!this.paramsValidator()) {
            console.log("Can't execute " + EventAction.name + " Action, bad params");
            return null;
        }

        let infos = this.params;

        Object.keys(config).forEach(key => {
            if (config[key])
                infos = jnestedReplace(infos, "{" + key + "}", config[key], ["inline"]);
        });

        const embed = new MessageBuilder();

        if (this.params.title)
            embed.setTitle(this.params.title);
        if (this.params.author)
            embed.setAuthor(this.params.author, this.params.avatar);
        if (this.params.url)
            embed.setURL(this.params.url);
        if (this.params.color)
            embed.setColor(this.params.color);
        if (this.params.thumbnail)
            embed.setThumbnail(this.params.thumbnail);
        if (this.params.description)
            embed.setDescription(this.params.description);
        if (this.params.image)
            embed.setImage(this.params.image);
        if (this.params.footer)
            embed.setFooter(this.params.footer, this.params.avatar);
        
        if (this.params.fields) {
            this.params.fields.forEach(el => {
                embed.addField(el.title, el.message, el.inline)
            });
        }

        embed.setTimestamp();
        this.hook.send(embed);
    }
}

module.exports = MessageAction;