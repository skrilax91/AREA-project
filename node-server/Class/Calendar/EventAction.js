const Action = require("../prototype/Action");
const { google } = require('googleapis');
const jnestedReplace = require('json-nested-replace');

class EventAction extends Action {
    static uid = "calendar_event_action";
	static name = "Create event";
	static description = "Create an event in google calendar";

    paramsValidator() {
        if (!super.paramsValidator())
            return false;

        let pattern = EventAction.getParamsPattern();

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
                name: "summary",
                type: "string",
                description: "The title of the event"
            },
            {
                name: "location",
                type: "string",
                description: "The location of the event"
            },
            {
                name: "description",
                type: "string",
                description: "The description of the event"
            },
            {
                name: "start_timestamp",
                type: "string",
                description: "The start timestamp of the event"
            },
            {
                name: "end_timestamp",
                type: "string",
                description: "The end timestamp of the event"
            }
        ];
    }

	setParams(params) {
        this.params = params;
    }

    setParam(index, value = null) {
        this.params[index] = value;
    }

    async execute(config) {
        const calendar = google.calendar({version: 'v3', oauth2Client: this.service.oauth2Client.getAuthenticator()});

        if (!this.paramsValidator()) {
            console.log("Can't execute " + EventAction.name + " Action, bad params");
            return null;
        }

        let infos = this.params;

        Object.keys(config).forEach(key => {
            if (config[key])
                infos = jnestedReplace(infos, "{" + key + "}", config[key]);
        });

        const event = {
            'summary': infos.summary,
            'location': infos.location,
            'description': infos.description,
            'start': {
                'dateTime': infos.start_timestamp+'T09:00:00-07:00',
                'timeZone': 'Europe/Paris',
            },
            'end': {
                'dateTime': infos.end_timestamp+'T17:00:00-07:00',
                'timeZone': 'Europe/Paris',
            },
        };

        
        await calendar.events.insert({
            auth: this.service.oauth2Client.getAuthenticator(),
            calendarId: 'primary',
            resource: event,
        });

        console.log('Event created: %s', infos.summary);
        console.log(infos);
    }
}

module.exports = EventAction;