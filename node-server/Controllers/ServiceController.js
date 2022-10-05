const ServiceManager = require("../Services/ServiceManager");

module.exports.getService = async ( req, res, next ) => {
    res.json(ServiceManager.getServices());
};
