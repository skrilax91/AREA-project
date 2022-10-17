const Trigger = require("../prototype/Trigger");
const axios = require('axios');

class LevelTrigger extends Trigger {
    static uid = "steam_level_trigger";
    static name = "Level Up";
    static description = "Triggered when an account level up";

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
        let level = null;
        let data = null;

        const delay = ms => new Promise(resolve => setTimeout(resolve, ms));
        do {
            if (!this.enabled)
                return null;

            await delay(30000);
            
            data = await this.service.steamAPI.getUserLevel(this.params.userid);

            if (!data)
                continue;
            
            if (level != data && level) {
                break;
            }
            level = data;
        } while (true);


        level = data;
        data = await this.service.steamAPI.getUserSummary(this.params.userid);
        data.level = level;
        console.log("Name changed !")
        console.log(data);
        return [data];
    }
}

module.exports = LevelTrigger;