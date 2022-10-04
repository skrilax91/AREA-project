module.exports.about = async (req, res, next) => {
    let host = req.socket.remoteAddress;
    let current_time = (Date.now() / 1000);

    let services = {};

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