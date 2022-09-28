require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const axios = require('axios');
const app = express()
app.use(bodyParser.json({
    verify: (req, res, buf) => {
        // Small modification to the JSON bodyParser to expose the raw body in the request object
        // The raw body is required at signature verification
        req.rawBody = buf
    }
}))
const https = require('https')
const crypto = require('crypto')

const port = 3000 // Set the express server's port to the corresponding port of your ngrok tunnel

let clientId = process.env['TWITCH_CLIENT_ID']
let authToken = process.env['TWITCH_ACCESS_TOKEN']
let ngrokUrl = process.env['NGROK_TUNNEL_URL']

console.log("access token: " + authToken)

let body = {
    client_id: clientId,
    client_secret: authToken,
    grant_type: "client_credentials"
}

let accessToken = null;

axios.post("https://id.twitch.tv/oauth2/token", body).then(response => {
    console.log(response.data);
    accessToken = response.data.access_token;
});

app.post('/createWebhook/:broadcasterId', async (req, res) => {

    let headers = {
        "Content-Type": "application/json",
        "Client-ID": clientId,
        "Authorization": "Bearer " + accessToken
    }

    console.log("Requesting user id for user " + req.params.broadcasterId);
    let id = await axios.get("https://api.twitch.tv/helix/users?login=" + req.params.broadcasterId, { headers: headers }).then(res => {
        return res.data.data[0].id;
    }).catch(err => {
        console.log("error: " + err);
        return null;
    });

    if (!id)
        return res.json({ message: "error" });

    console.log("id: " + id);

    var createWebHookParams = {
        host: "api.twitch.tv",
        path: "helix/eventsub/subscriptions",
        method: 'POST',
        headers
    }
    var createWebHookBody = {
        "type": "channel.follow",
        "version": "1",
        "condition": {
            "broadcaster_user_id": id
        },
        "transport": {
            "method": "webhook",
            // For testing purposes you can use an ngrok https tunnel as your callback URL
            "callback": ngrokUrl+"/notification", // If you change the /notification path make sure to also adjust in line 69
            "secret": "keepItSecretKeepItSafe" // Replace with your own secret
        }
    }
    var responseData = ""
    var webhookReq = https.request(createWebHookParams, (result) => {
        result.setEncoding('utf8')
        result.on('data', function(d) {
                responseData = responseData + d
            })
            .on('end', function(result) {
                var responseBody = JSON.parse(responseData)
                res.send(responseBody)
            })
    })
    webhookReq.on('error', (e) => { console.log("Error") })
    webhookReq.write(JSON.stringify(createWebHookBody))
    webhookReq.end()
})

function verifySignature(messageSignature, messageID, messageTimestamp, body) {
    let message = messageID + messageTimestamp + body
    let signature = crypto.createHmac('sha256', "keepItSecretKeepItSafe").update(message) // Remember to use the same secret set at creation
    let expectedSignatureHeader = "sha256=" + signature.digest("hex")

    return expectedSignatureHeader === messageSignature
}

app.post('/notification', (req, res) => {
    if (!verifySignature(req.header("Twitch-Eventsub-Message-Signature"),
            req.header("Twitch-Eventsub-Message-Id"),
            req.header("Twitch-Eventsub-Message-Timestamp"),
            req.rawBody)) {
        res.status(403).send("Forbidden") // Reject requests with invalid signatures
    } else {
        if (req.header("Twitch-Eventsub-Message-Type") === "webhook_callback_verification") {
            console.log("challenge: " + req.body.challenge)
            console.log(req.body);
            res.send(req.body.challenge) // Returning a 200 status with the received challenge to complete webhook creation flow

        } else if (req.header("Twitch-Eventsub-Message-Type") === "notification") {
            console.log(req.body.event) // Implement your own use case with the event data at this block
            res.send("") // Default .send is a 200 status
        }
    }
})

async function testChannel() {
    const delay = ms => new Promise(resolve => setTimeout(resolve, ms));
    let tmpdate = new Date();

    while (!accessToken) { await delay(1000) };

    let headers = {
        "Content-Type": "application/json",
        "Client-ID": clientId,
        "Authorization": "Bearer " + accessToken
    }

    let id = await axios.get("https://api.twitch.tv/helix/users?login=devix69_", { headers: headers }).then(res => {
        return res.data.data[0].id;
    }).catch(err => {
        console.log("error: " + err);
        return null;
    });

    while(true) {
        let data = await axios.get("https://api.twitch.tv/helix/users/follows?to_id="+id, { headers: headers }).then(res => {
            return res.data.data;
        }).catch(err => {
            console.log("error: " + err);
            return null;
        });
        
        let news = data.filter(follow => new Date(follow.followed_at) >  tmpdate);

        console.log(news);

        tmpdate = new Date();
        await delay(10000);
    }
};

testChannel();

app.listen(port, () => {
    console.log(`Twitch Webhook Example listening at http://localhost:${port}`)
})
