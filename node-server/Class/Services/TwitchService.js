const Service = require("../prototype/Service");
const axios = require('axios');
const FollowTrigger = require("../Twitch/FollowTrigger");

class TwitchService extends Service {
    static uid = "service_twitch";
    static name = "Service Twitch";
    static clientId = "4zcf5a0fp9bn4di3mdyb6obntnc0af";
    static clientSecret = "jswb9yjz6uc7hsd7y6kf499owlf76s";
    static accessToken;

    static triggerPrototypes = [
        FollowTrigger
    ];

    constructor() {
        super();
    }

    paramsValidator() {
        if (!super.paramsValidator())
            return false;

        let pattern = TwitchService.getParamsPattern();

        pattern.forEach(el => {
            if (!this.params[el.name])
                return false;

            if (typeof this.params[el.name] != el.type)
                return false;
        });

        return true;
    }

    static getTriggerPrototype(uid) {
        let res = TwitchService.triggerPrototypes.find(el => el.uid == uid );
        return res;
    }

    static async getUserId(name) {
        let headers = {
            "Content-Type": "application/json",
            "Client-ID": TwitchService.clientId,
            "Authorization": "Bearer " + (await TwitchService.getAccessToken())
        }

        console.log("access token: " + TwitchService.accessToken);

        return await axios.get("https://api.twitch.tv/helix/users?login="+name, { headers: headers }).then(res => {
            return res.data.data[0].id;
        }).catch(err => {
            console.log("error: " + err);
            return null;
        });
    }

    static getParamsPattern() {
        return [
            {
                name: "username",
                type: "string",
                description: "The username of the specified channel"
            }
        ];
    }

    async enableTrigger(uid, params = {}) {
        if (this.getTrigger(uid))
            return false;
        
        let proto = TwitchService.getTriggerPrototype(uid);

        if (!proto) {
            console.log("Can't find prototype");
            return false;
        }

        params.clientId = TwitchService.clientId;
        params.accessToken = await TwitchService.getAccessToken();

        let trigger = new proto(params);
        
        this.triggers.push(trigger);
        console.log("================TRIGGERS========================")
        console.log(this.triggers);

        const loop = async (el) => {
            while (true) {
                console.log("Awaiting new follow...");
                let res = await el.process();
                res.forEach(el => {
                    console.log("New follow by " + el.from_name);
                })
            }
        }

        loop(trigger);
        return true;
    }

    static async getAccessToken() {
        console.log("Get access token: " + TwitchService.accessToken);
        if (TwitchService.accessToken != null)
            return TwitchService.accessToken;
        else {
            console.log("Creating new service token");
            let body = {
                client_id: TwitchService.clientId,
                client_secret: TwitchService.clientSecret,
                grant_type: "client_credentials"
            }
            await axios.post("https://id.twitch.tv/oauth2/token", body).then(response => {
                console.log(response.data);
                TwitchService.accessToken = response.data.access_token;
            });
            return TwitchService.accessToken;
        }
    }
}

module.exports = TwitchService