const { Sequelize } = require('sequelize');
const AreaManager = require('./AreaManager');

var database;

async function handleDisconnect() {
    var name = process.env.DATABASE_NAME || ""
    var user = process.env.DATABASE_USER || ""
    var password = process.env.DATABASE_PASSWORD || ""

    const sequelize = new Sequelize(name, user, password, {
        host: process.env.DATABASE_HOST || "",
        dialect: "mysql"
    });

    try {
        await sequelize.authenticate();
        console.log('Connection has been established successfully.');
        global.database = sequelize
    } catch (error) {
        console.error('Unable to connect to the database:', error);
        return;
    }
    require("../Entities");
    await global.database.sync({ alter: true });

    let areas = await global.database.models.Area.findAll();

    areas.forEach(el => {
        el.instanciate();
        AreaManager.addArea(el);
    });
}

handleDisconnect();
