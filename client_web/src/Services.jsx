import React from 'react';
import Header from "./components/Header";

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
        <Header isAuthenticated={true}></Header>
        <Content/>
    </div>);
}

export default Services;