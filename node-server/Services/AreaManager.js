const { Area } = require("../models");

class AreaManager {
    static Areas = [];

    static addArea(area) {
        AreaManager.Areas.push(area);
    }

    static async loadAreas() {
        let areas = await Area.findAll();

        areas.forEach(el => {
            el.instanciate();
            AreaManager.addArea(el);
        });
    }
}

module.exports = AreaManager