module.exports = async ( req, res, next ) => {
    if( req.session.auth == null && req.cookies['Intranet_connect_token'] != null ){         
        database.query( "SELECT * FROM users WHERE login_token = ?", [ req.cookies['Intranet_connect_token'] ], ( err, results ) => {
            if( results && results.length > 0 ){
                req.session.auth = results[0];
                next();
            } else {
                next();
            }
        })
    } else {
        if( req.session.auth != null ){
            database.query( "SELECT * FROM users WHERE id = ?", [ req.session.auth.id ], ( err, results ) => {
                if( results && results.length > 0 ){
                    req.session.auth = results[0];
                    next();
                } else {
                    next();
                }
            })
        } else {
            next();
        }
    }
}
