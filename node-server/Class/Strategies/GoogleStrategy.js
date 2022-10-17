const Strategy = require("../prototype/Strategy");
const { google } = require('googleapis');

class GoogleStrategy extends Strategy {
    static uid = "google_strategy";
    config;
    auth;
    scopes;

    constructor(configs, userId) {
        super();
        this.config = configs
        this.auth = new google.auth.OAuth2(this.config.clientId, this.config.secret, this.config.callback);
        this.scopes = [];
    }

    getAuthUrl() {
        if (!this.scopes.length)
            return null;

        return this.auth.generateAuthUrl({
            access_type: 'offline',
            scope: this.scopes,
            include_granted_scopes: true
        });
    }

    getAuthenticator() {
        return this.auth;
    }

    static authenticate() {

    }

    static verify() {

    }

    static isAuthenticated(id) {
        
    }
}

module.exports = GoogleStrategy;