const Service = require("../prototype/Service");
const axios = require('axios');
const EventAction = require("../Calendar/EventAction");
const {google} = require('googleapis');


class CalendarService extends Service {
    static uid = "service_calendar";
    static name = "Service Google Calendar";

    static triggerPrototypes = [];
    static actionPrototypes = [
        EventAction
    ];

    constructor() {
        super();
        this.oauth2Client = new google.auth.OAuth2(
            "536623300813-8bc3oho8fcrkiu0hsqi6n3ml21fh6v61.apps.googleusercontent.com",
            "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",
            "http://127.0.0.1:3000/api/auth/googleAuth"
        );
          
          // Access scopes for read-only Drive activity.
        this.scopes = [
            'https://www.googleapis.com/auth/calendar'
        ];

        this.code = "4/0ARtbsJowoGxcF2YUBIvIhbhGIcvu7zaVYnBAW2R_7PmdJq2mz8Vkf2nA3AxTO5BbpUqmwg"

        this.tokens = {
            access_token: 'ya29.a0Aa4xrXNRRGHPGpXxm2Yzx1a8pLqeFlS8ktv0Ksb3OkwDBeFKLE4PM9M_f87gUr2rIu_E1o2HAqoxn-WV0FGygGVc5S0fex6JRvsTB1YDhzXM5XXpAiY2LVV5BmTDuRcu8ZuagJIvs1teFwKoZni-QuAhgLhzaCgYKATASARASFQEjDvL9ULPVv_Mg1w5HpRwgojGs4w0163',
            refresh_token: '1//03Ii3dAYYU_FLCgYIARAAGAMSNwF-L9IrGle6Cg7a_Ka6Cs-tK9gzRcNrtMiDVQmMghyOxjTwe7wVYPmsWE1XEz_382dMhfxEjzg',
            scope: 'https://www.googleapis.com/auth/calendar',
            token_type: 'Bearer',
            expiry_date: 1664811359863
        };
        
        this.oauth2Client.setCredentials(this.tokens);
        //let url = this.getAuthUrl();
        //console.log("url: " + url);
        //this.getAccessToken();
    }

    getAuthUrl() {
        return this.oauth2Client.generateAuthUrl({
            access_type: 'offline',
            scope: this.scopes,
            include_granted_scopes: false
        });
    }

    paramsValidator() {
        if (!super.paramsValidator())
            return false;

        let pattern = CalendarService.getParamsPattern();

        pattern.forEach(el => {
            if (!this.params[el.name])
                return false;

            if (typeof this.params[el.name] != el.type)
                return false;
        });

        return true;
    }

    static getTriggerPrototype(uid) {
        let res = CalendarService.triggerPrototypes.find(el => el.uid == uid );
        return res;
    }

    static getActionPrototype(uid) {
        let res = CalendarService.actionPrototypes.find(el => el.uid == uid );
        return res;
    }

    getTrigger(uid) {
        let res = this.triggers.find(el => el.uid == uid );
        return res;
    }

    getAction(uid) {
        let res = this.actions.find(el => el.uid == uid );
        return res;
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
        
        let proto = CalendarService.getTriggerPrototype(uid);

        if (!proto) {
            console.log("Can't find prototype");
            return false;
        }

        let trigger = new proto(params);
        
        this.triggers.push(trigger);
        console.log("================TRIGGERS========================")
        console.log(this.triggers);
        return trigger;
    }

    async enableAction(uid, params = {}) {
        console.log("Enabling action...");
        if (this.getAction(uid))
            return false;
        
        console.log("Getting action proto...");
        let proto = CalendarService.getActionPrototype(uid);

        if (!proto) {
            console.log("Can't find prototype");
            return false;
        }

        let action = new proto(params, this);
        
        this.actions.push(action);
        console.log("================ACTION========================")
        console.log(this.actions);
        return action;
    }

    async getAccessToken() {
        console.log("Creating new credentials token with code " + this.code);
        let res = await this.oauth2Client.getToken(this.code);
        this.oauth2Client.setCredentials(res.tokens);
        console.log(res);
        console.log("Credentials set !")
    }
}

module.exports = CalendarService