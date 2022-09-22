module.exports.ApiTokenAuthenticator = () => {
    return function( req, res, next ) {
        let token = req.headers["x-auth-token"];
        if (token == null) {
            res.json({ "message": "This route is secured, please provide a token" }, 401);
            return;
        }

        database.models.AuthToken.findOne({ where: { token } }).then((result) => {
            if (!result) {
                res.json({ "message": "Bad token provided" }, 401);
                return;
            } else {
                next();
            }
        })
    }
}