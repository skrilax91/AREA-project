module.exports.getServices = async (req, res, next) => {
    res.json(req.user.getServices());
};

module.exports.getProfile = async (req, res, next) => {
    return res.json(req.user.toJSON());
}




/**
 * Set new token to a service for the user
 */ 
module.exports.setServices = async (req, res, next) => {

}