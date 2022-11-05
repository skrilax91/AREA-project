const Trigger = require("../prototype/Trigger");
const axios = require('axios');

class AchievementTrigger extends Trigger {
    static uid = "steam_achievement_trigger";
    static name = "New Achievement";
    static description = "Check for new achievement of a player on a game";

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
            },
            {
                name: "gameid",
                type: "string",
                description: "The id of the game",
                required: true
            }
        ];
    }

    static getReturnsPattern() {
        return [
            {
                name: "api",
                type: "string",
                description: "The api identifier of the achievement",
            },
            {
                name: "name",
                type: "string",
                description: "The name of the achievement",
            },
            {
                name: "description",
                type: "string",
                description: "The description of the achievement",
            },
            {
                name: "unlockTime",
                type: "string",
                description: "The unix timestamp of the unlock",
            }
        ];
    }

    async process() {
        if (!this.constructor.paramsValidator(this.params)) {
            console.log("Can't process " + this.constructor.name + " Trigger, bad params: %o", this.params);
            return null;
        }
        let news = [];
        let timestamp = new Date();

        const delay = ms => new Promise(resolve => setTimeout(resolve, ms));
        do {
            if (!this.enabled)
                return null;

            await delay(60000);
            
            let data = await this.service.steamAPI.getUserAchievements(this.params.userid, this.params.gameid)

            if (!data)
                continue;
            news = data.achievements.filter(achi => new Date(achi.unlockTime * 1000) >  timestamp && achi.achieved);
        } while (!news.length);

        console.log("new achievements !")
        console.log(news);
        return news;
    }
}

module.exports = AchievementTrigger;