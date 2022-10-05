const Trigger = require("../prototype/Trigger");
const axios = require('axios');

class FollowTrigger extends Trigger {
    static uid = "twitch_follow_trigger";
    static name = "New Follow";
    static description = "Check for new follow on the provided channel";

    paramsValidator() {
        if (!super.paramsValidator())
            return false;

        let pattern = this.constructor.getParamsPattern();

        for (let param of pattern) {
            if (!param.required)
                continue;

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
                name: "username",
                type: "string",
                description: "The user name of the specified channel",
                required: true,
                mutualized: ["userid"]
            },
            {
                name: "userid",
                type: "string",
                description: "The user id of the specified channel",
                required: true,
                mutualized: ["username"]
            }
        ];
    }

    async process() {
        if (!this.paramsValidator()) {
            console.log("Can't process " + FollowTrigger.name + " Trigger, bad params");
            return null;
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

        let res = []

        for (let n of news) {
            res.push({
                username: n.from_name,
                channel: n.to_name
            });
        }

        return res;
    }
}

module.exports = FollowTrigger;