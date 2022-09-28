class Action {
    #name;
    #description;

    constructor(name, description = "") {
        if (this.constructor === Action) {
          throw new TypeError('Abstract class "Action" cannot be instantiated directly');
        }

        this.#name = name;
        this.#description = description;
    }

    execute(params) {
        if (this.constructor === Action) {
            throw new TypeError('you need to implement an execute function');
          }
    }

}

module.exports = Action;