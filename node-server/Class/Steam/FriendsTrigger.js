const Trigger = require("../prototype/Trigger");
const axios = require('axios');

class FriendsTrigger extends Trigger {
    static uid = "steam_friends_trigger";
    static name = "New Friends";
    static description = "Check for new friends on an account";

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
        let news = [];
        let timestamp = new Date();

        const delay = ms => new Promise(resolve => setTimeout(resolve, ms));
        do {
            if (!this.enabled)
                return null;

            await delay(60000);
            
            let data = await this.service.steamAPI.getUserFriends(this.params.userid)

            if (!data)
                continue;
            news = data.filter(friend => new Date(friend.friendSince * 1000) >  timestamp);
        } while (!news.length);

        console.log("new Friends !")
        let res = [];

        for (let newres of news) {
            let user = await this.service.steamAPI.getUserSummary(newres.steamID);
            user.friendSince = newres.friendSince;
            res.push(user);
        }

        console.log(res);
        return res;
    }
}

module.exports = FriendsTrigger;