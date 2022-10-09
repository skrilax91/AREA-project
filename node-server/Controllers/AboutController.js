const ServiceManager = require("../Services/ServiceManager");

module.exports.about = async (req, res, next) => {
    let host = req.ip;
    let current_time = Math.floor(Date.now() / 1000);

    let services = ServiceManager.getAboutServices();

    res.json({
        client: {
            host
        },
        server: {
            current_time,
            services
        }
    });
}