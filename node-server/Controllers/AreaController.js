const { Area } = require("../models");
const AreaManager = require("../Services/AreaManager");

module.exports.getAreas = async (req, res, next) => {
    let areas = await req.user.getAreas();

    let result = []

    areas.forEach(el => {
        result.push({
            id: el.id,
            name: el.name,
            description: el.description,
            active: el.active
        })
    });

    return res.json(result);
}

module.exports.getArea = async (req, res, next) => {
    if (!req.params.area) {
        res.status(400).json({'message': 'You need to provide an area'});
        return;
    }

    let area = await req.user.getAreaById(req.params.area);

    if (!area) {
        res.status(404).json({ 'message': "Cannot find area with id " + req.params.area });
        return;
    }

    res.json(area.toJSON());
}

module.exports.createArea = async (req, res, next) => {
    if (!req.body.name) {
        res.status(400).json({'message': 'You need to provide a name'});
        return;
    }

    if (!req.body.description) {
        res.status(400).json({'message': 'You need to provide a description'});
        return;
    }

    if (!req.body.config) {
        res.status(400).json({'message': 'You need to provide a config'});
        return;
    }

    let area = await Area.create({ 
        name: req.body.name,
        description: req.body.description,
        config: req.body.config,
        active: false,
        userId: req.user.id
    });
    AreaManager.addArea(area);
    await AreaManager.loadArea(area.id);
    return res.json({ 'message': 'Successfully created area' });
}

module.exports.disableArea = async (req, res, next) => {
    if (!req.params.area) {
        res.status(400).json({'message': 'You need to provide an area'});
        return;
    }

    let area = await req.user.getAreaById(req.params.area);

    if (!area) {
        res.status(404).json({ 'message': "Cannot find area with id " + req.params.area });
        return;
    }

    await AreaManager.unloadArea(area.id);
    return res.json({ 'message': "Successfully unloaded area" })
}

module.exports.enableArea = async (req, res, next) => {
    if (!req.params.area) {
        res.status(400).json({'message': 'You need to provide an area'});
        return;
    }

    let area = await req.user.getAreaById(req.params.area);

    if (!area) {
        res.status(404).json({ 'message': "Cannot find area with id " + req.params.area });
        return;
    }

    await AreaManager.loadArea(area.id);
    return res.json({ 'message': "Successfully loaded area" })
}