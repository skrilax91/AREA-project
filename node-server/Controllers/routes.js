var express = require('express');
var router = express.Router();

const { catchErrors } = require('../Services/ErrorHandlerService.js');

var AuthController = require('./AuthController');

// Homes pages
router.get( '/api', catchErrors( AuthController.index ) );
router.post( '/api/auth/register', catchErrors( AuthController.register ) );

module.exports = router;
