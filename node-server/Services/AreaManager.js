const { Area } = require("../models");

class AreaManager {
    static Areas = [];

    static addArea(area) {
        this.Areas.push(area);
    }

    static getArea(id) {
        for (let area of this.Areas)
            if (area.id == id)
                return area;
        return null;
    }

    static async loadArea(id) {
        let area = this.getArea(id);

        if (!area)
            return false;

        await area.load();
    }

    static async unloadArea(id) {
        let area = this.getArea(id);

        if (!area)
            return false;
        
        area.unload();
    }

    static async instanciateAreas() {
        let areas = await Area.findAll();
        await Area.update({ active: false }, { where: {} });

        for (let area of areas) {
            this.addArea(area);
            if (area.active)
                await this.loadArea(area.id);
        }
    }
}

module.exports = AreaManager