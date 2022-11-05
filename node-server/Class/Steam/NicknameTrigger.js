const Trigger = require("../prototype/Trigger");
const axios = require('axios');

class NicknameTrigger extends Trigger {
    static uid = "steam_nickname_trigger";
    static name = "Nickname change";
    static description = "Check when an account nickname change";

    constructor(params = null, service = null) {
        super(params, service);

        if (this.params.username && !this.params.userid) {
            steam.resolve('https://steamcommunity.com/id/' + this.params.username).then(id => {
                this.params.userid = id;
            });
        }
    } 

    static getParamsPattern() {
        return [
            {
                name: "username",
                type: "string",
                description: "The user name of the specified steam account",
                required: true,
                mutualized: ["userid"]
            },
            {
                name: "userid",
                type: "string",
                description: "The user id of the specified steam account",
                required: true,
                mutualized: ["username"]
            }
        ];
    }

    static getReturnsPattern() {
        return [
            {
                name: "avatar",
                type: "json",
                description: "return the small | medium | large avatar",
            },
            {
                name: "steamID",
                type: "string",
                description: "The steamID of the new friend",
            },
            {
                name: "url",
                type: "string",
                description: "The url of the profile",
            },
            {
                name: "created",
                type: "string",
                description: "The unix timestamp of the creation of the account",
            },
            {
                name: "lastLogOff",
                type: "string",
                description: "The unix timestamp of the last log off of the account",
            },
            {
                name: "nickname",
                type: "string",
                description: "The nikname of the account",
            },
            {
                name: "realName",
                type: "string",
                description: "The real name of the account",
            }
        ];
    }

    async process() {
        if (!this.constructor.paramsValidator(this.params)) {
            console.log("Can't process " + this.constructor.name + " Trigger, bad params: %o", this.params);
            return null;
        }
        let nickname = null;
        let data = null;

        const delay = ms => new Promise(resolve => setTimeout(resolve, ms));
        do {
            if (!this.enabled)
                return null;

            if (nickname)
                await delay(15000);
            
            data = await this.service.steamAPI.getUserSummary(this.params.userid);

            if (!data)
                continue;
            
            if (nickname != data.nickname && nickname) {
                break;
            }
            nickname = data.nickname;
        } while (true);

        console.log("Name changed !")
        data.old = nickname;
        data.avatar_medium = data.avatar.medium;
        console.log(data);
        return [data];
    }
}

module.exports = NicknameTrigger;