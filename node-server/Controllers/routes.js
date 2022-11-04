var express = require('express');
var router = express.Router();

const { catchErrors } = require('../Services/ErrorHandlerService.js');
const { ApiTokenAuthenticator } = require('../Security/ApiTokenAuthenticator.js');


var { about } = require('./AboutController');
var AuthController = require('./AuthController');
var UserController = require('./UserController');
var ServiceController = require('./ServiceController');
var AreaController = require('./AreaController');

// Homes pages
router.get( '/api', ApiTokenAuthenticator(), catchErrors( AuthController.index ) );
router.post( '/api/auth/register', catchErrors( AuthController.register ) );
router.post( '/api/auth/login', catchErrors( AuthController.login ) );
router.post( '/api/auth/logout', ApiTokenAuthenticator(), catchErrors( AuthController.logout ) );

router.get( '/api/auth/googleAuth', catchErrors( AuthController.googleAuth ) );


router.get('/api/user/services', ApiTokenAuthenticator(), catchErrors( UserController.getServices ));
router.get('/api/user/profile', ApiTokenAuthenticator(), catchErrors( UserController.getProfile ));

router.get('/api/services', catchErrors( ServiceController.getServices ));
router.get('/api/services/:service_uid', ServiceController.getService);

router.get('/api/area', ApiTokenAuthenticator(), catchErrors( AreaController.getAreas ));
router.post('/api/area', ApiTokenAuthenticator(), catchErrors( AreaController.createArea ));
router.get('/api/area/:area', ApiTokenAuthenticator(), catchErrors( AreaController.getArea ));

router.get('/api/area/:area/enable', ApiTokenAuthenticator(), catchErrors( AreaController.enableArea ));
router.get('/api/area/:area/disable', ApiTokenAuthenticator(), catchErrors( AreaController.disableArea ));

router.all('/about.json', catchErrors( about ));

module.exports = router;