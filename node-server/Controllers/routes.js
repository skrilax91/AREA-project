var express = require('express');
var router = express.Router();

const { catchErrors } = require('../Services/ErrorHandlerService.js');
const { ApiTokenAuthenticator } = require('../Security/ApiTokenAuthenticator.js');


var AuthController = require('./AuthController');
var UserController = require('./UserController');

// Homes pages
router.get( '/api', ApiTokenAuthenticator(), catchErrors( AuthController.index ) );
router.post( '/api/auth/register', catchErrors( AuthController.register ) );
router.post( '/api/auth/login', catchErrors( AuthController.login ) );
router.post( '/api/auth/logout', ApiTokenAuthenticator(), catchErrors( AuthController.logout ) );

router.get( '/api/auth/googleAuth', catchErrors( AuthController.googleAuth ) );


router.get('/api/user/services', ApiTokenAuthenticator(), catchErrors( UserController.getServices ));




module.exports = router;