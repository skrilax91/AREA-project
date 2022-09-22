module.exports.index = async ( req, res, next ) => {
    res.json({ "message": "Welcome to the api"});
};

module.exports.register = async ( req, res, next ) => {
    if (!req.body.username) {
        res.json({'message': 'Username field should be supplied', 'field': 'username'}, 400);
        return;
    }

    if (!req.body.password) {
        res.json({'message': 'Password field should be supplied', 'field': 'password'}, 400);
        return;
    }

    var user = await database.models.User.findOne({ where: { email: req.body.username } })
    
    if (user) {
        res.json({'message': 'Email already exist', 'field': 'username'}, 409);
        return;
    }

    if (req.body.password.length < 8 || !(/\d/.test(req.body.password))) {
        res.json({'message': 'Password need to be more than 8 characters and should contain a number', 'field': 'password'}, 400);
        return;
    }

    let newUser = await database.models.User.build({ email: req.body.username });
    await newUser.setPassword(req.body.password);
    await newUser.save();

    res.json({ "message": "Successfully created account"});
};