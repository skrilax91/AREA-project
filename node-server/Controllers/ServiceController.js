const ServiceManager = require("../Services/ServiceManager");

module.exports.getServices = async ( req, res, next ) => {
    let services = [];

    ServiceManager.services.forEach(el => {
        let service = {
            uid: el.uid,
            name: el.name,
            description: el.description
        }
        services.push(service);
    });


    res.json({ services });
};

module.exports.getService = async ( req, res, next ) => {
    if (!req.params.service_uid) {
        res.status(400).json({'message': 'You need to provide a service_uid'});
        return;
    }

    let service = ServiceManager.getService(req.params.service_uid);

    if (!service) {
        res.status(404).json({'message': 'Cannot find service with uid ' + req.params.service_uid});
        return;
    }

    let result = {
        uid: service.uid,
        name: service.name,
        description: service.description,
        triggers: service.getJsonTriggers(),
        actions: service.getJsonActions()
    }

    res.status(200).json(result);
};