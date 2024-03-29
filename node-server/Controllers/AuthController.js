var randtoken = require('rand-token');
const { User, AuthToken } = require("../models");

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

    var user = await User.findOne({ where: { email: req.body.username } })
    
    if (user) {
        res.json({'message': 'Email already exist', 'field': 'username'}, 409);
        return;
    }

    if (req.body.password.length < 8 || !(/\d/.test(req.body.password))) {
        res.json({'message': 'Password need to be more than 8 characters and should contain a number', 'field': 'password'}, 400);
        return;
    }

    let newUser = await User.build({ email: req.body.username });
    await newUser.setPassword(req.body.password);
    await newUser.save();

    res.json({ "message": "Successfully created account"});
};

module.exports.login = async ( req, res, next ) => {
    if (!req.body.username) {
        res.json({'message': 'Username field should be supplied', 'field': 'username'}, 400);
        return;
    }

    if (!req.body.password) {
        res.json({'message': 'Password field should be supplied', 'field': 'password'}, 400);
        return;
    }

    var user = await User.findOne({ where: { email: req.body.username } })
    
    if (!user || !(await user.checkPassword(req.body.password))) {
        res.json({'message': 'Bad credentials'}, 401);
        return;
    }

    let token = randtoken.generate(40);
    let authToken = await AuthToken.create({ token, userId: user.id });

    res.json({
        'token': authToken.token,
        'user': {
            'id': user.id,
            'email': user.email
        }
    });
}

module.exports.logout = async (req, res, next) => {
    let token = req.headers["x-auth-token"];

    let authToken = await AuthToken.findOne({ where: { token } });

    if (!authToken) {
        res.json({'message': "Can't find token"}, 404);
        return;
    }

    await authToken.destroy();

    res.json({'message': "Successfully logged out"});
    return;
}

module.exports.googleAuth = async (req, res, next) => {
    if (!req.body.credentials) {
        res.json({'message': 'Username field should be supplied', 'field': 'credentials'}, 400);
        return;
    }

    let email = req.body.credentials.email;
    let username = req.body.credentials.given_name;
    let created = false;


    var user = await User.findOne({ where: { email: email } })
    
    if (!user) {
        user = await User.build({ email });
        await user.save();
        created = true;
    }

    let token = randtoken.generate(40);
    let authToken = await AuthToken.create({ token, userId: user.id });

    res.json({
        'created': created,
        'token': authToken.token,
        'user': {
            'id': user.id,
            'email': user.email
        }
    });
}