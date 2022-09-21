var express = require('express');
var router = express.Router();

const { catchErrors } = require('../Services/ErrorHandlerService.js');

var AuthController = require('./AuthController');

// Homes pages
router.get( '/', catchErrors( AuthController.index ) );

module.exports = router;
