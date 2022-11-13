import React, {useEffect, useState} from 'react';
import settingsRequest from "../Settings/settings";
import servicesRequest from "./services";



function Service() {
    const data = [{
        service: "twitch",
        name: "Twitch",
    }, {
        service: "google-calendar",
        name: "Google Calendar",
    }];


    return (<div>
        {data.map(function (d, idx) {
            return (<div key={idx} style={{backgroundColor: d.color}}>
                <input type="checkbox" id={d.service}/><label htmlFor={d.service}>{d.name}</label>
            </div>);
        })}
    </div>);
}

function Content() {
    return (<>
        <h1>Choose profile</h1>
        <form>
            <Service/>
            <button type="submit">Set Profile</button>
        </form>
    </>);
}

function Services() {
    return (<div id="flex-div">
        <Content/>
    </div>);
}

export default Services;