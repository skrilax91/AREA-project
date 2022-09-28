class AreaManager {
    static Areas = [];

    static addArea(area) {
        AreaManager.Areas.push(area);
    }
}

module.exports = AreaManager