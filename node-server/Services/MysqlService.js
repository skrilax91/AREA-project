var mysql = require('mysql2');

var database;

function handleDisconnect() {
    database = mysql.createConnection({
        host: process.env.DATABASE_HOST || "",
        user: process.env.DATABASE_USER || "",
        password: process.env.DATABASE_PASSWORD || "",
        database: process.env.DATABASE_NAME || ""
    });

    database.connect( function(err) {
        if(err) {
            console.log('error when connecting to db:', err)
            setTimeout(handleDisconnect, 2000);
        }
    });

    database.on('error', function(err) {
        console.log('db error', err);

        if(err.code === 'PROTOCOL_CONNECTION_LOST') {
            handleDisconnect();
        } else {
            throw err;
        }
    });

    global.database = database
}

handleDisconnect();
