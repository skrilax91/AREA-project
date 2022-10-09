const { AuthToken } = require("../models");

module.exports.ApiTokenAuthenticator = () => {
    return function( req, res, next ) {
        let token = req.headers["x-auth-token"];
        if (token == null) {
            res.json({ "message": "This route is secured, please provide a token" }, 401);
            return;
        }

        AuthToken.findOne({ where: { token } }).then((result) => {
            if (!result) {
                res.json({ "message": "Bad token provided" }, 401);
                return;
            }

            result.getUser().then(function(user) {
                if (!user) {
                    res.status(500).json({ "message": "An error has occured with your token, contact an administrator", "error_code": "UNIDB8101733" });
                    return;
                }
                
                req.user = user;
                next();
            });
        })
    }
}