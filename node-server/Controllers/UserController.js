module.exports.getServices = async (req, res, next) => {
    res.json(req.user.getServices());
};


/**
 * Set new token to a service for the user
 */ 
module.exports.setServices = async (req, res, next) => {

}