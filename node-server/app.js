var express = require('express');
var bodyPareser = require('body-parser');
var path = require('path');
require('dotenv').config({path: __dirname + '/.env'})

/* Load MYSQL */
require('./Services/MysqlService');

// Initilize globals
global.__basedir = __dirname;

// Load modules
var session = require('express-session');
var cookieParser = require('cookie-parser');
var requestIp = require('request-ip');
var request = require('request');

var server = express();

var http = require('http').createServer( server );

// Moteur de template
server.set( 'view engine', 'ejs' );
server.disable( 'x-powered-by' );
server.set('trust proxy', true);

// Middleware
server.use( '/Assets', express.static('assets') )
server.use( bodyPareser.urlencoded( { extended: false } ) );
server.use( bodyPareser.json() );
server.set( 'views', [ path.join( __dirname, 'Templates'), path.join( __dirname, 'Templates/partials/' ) ]);
server.use( requestIp.mw() )
server.use( cookieParser() );
server.use( session({
    secret: process.env.APP_SECRET || "changethis!",
    resave: false,
    saveUninitialized: false,
    cookie: { secure: false }
}));


//server.use( require('./MiddleWares/ApiTokenAuthenticator') );

// Routes
server.use( '/', require('./Controllers/routes') );

// Catch 404
server.use( ( req, res, next ) => {
    const err = new Error( "Page introuvable" );

    err.status = 404;
    err.msg = "La page que vous avez demandée n'existe pas.";
    
    next( err )
})

// Catch errors
server.use( ( err, req, res, next ) => {
    res.locals.error = err

    res.locals.title = "AREA | Erreur"
    res.locals.error.status = err.status || 500
    res.locals.error.msg = err.msg || null

    if( err.status != 404 ){
        console.log( err )
    }

    res.status( err.status || 500 )
    res.render( 'error' )
})

// https.listen( 443 );
http.listen( 3000 );

console.log('Server started')
