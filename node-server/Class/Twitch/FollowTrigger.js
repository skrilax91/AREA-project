const Trigger = require("../prototype/Trigger");
const axios = require('axios');

class FollowTrigger extends Trigger {
    static uid = "twitch_follow_trigger";
    static name = "New Follow";
    static description = "Check for new follow on the provided channel";

    paramsValidator() {
        if (!super.paramsValidator())
            return false;

        let pattern = FollowTrigger.getParamsPattern();

        pattern.forEach(el => {
            if (!this.params[el.name])
                return false;

            if (typeof this.params[el.name] != el.type)
                return false;
        });

        return true;
    }

    static getParamsPattern() {
        return [
            {
                name: "userid",
                type: "string",
                description: "The user id of the specified channel"
            },
            {
                name: "clientId",
                type: "string",
                description: "The twitch app user id"
            },
            {
                name: "accessToken",
                type: "string",
                description: "the twitch app access token"
            }
        ];
    }

    async process() {
        if (!this.paramsValidator()) {
            console.log("Can't process " + FollowTrigger.name + " Trigger, bad params");
            return false;
        }

        const delay = ms => new Promise(resolve => setTimeout(resolve, ms));
        let headers = {
            "Content-Type": "application/json",
            "Client-ID": this.params.clientId,
            "Authorization": "Bearer " + this.params.accessToken
        }
        let news = [];
        let timestamp = new Date();

        do {
            await delay(10000);
            let data = await axios.get("https://api.twitch.tv/helix/users/follows?to_id="+this.params.userid, { headers: headers }).then(res => {
                return res.data.data;
            }).catch(err => {
                console.log("error: " + err);
                return null;
            });

            if (!data)
                continue;
            news = data.filter(follow => new Date(follow.followed_at) >  timestamp);
        } while (!news.length);

        return news;
    }
}

module.exports = FollowTrigger;