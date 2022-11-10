import Header from "../../components/Header";
import React from 'react';

function Service() {
    const data = [{
        color: "#9370DB",
        image: "https://seeklogo.com/images/T/twitch-logo-4931D91F85-seeklogo.com.png",
        text: "New follow"
    }, {
        color: "#aaa",
        image: "https://www.onda-dias.eu/cms/wp-content/uploads/2018/05/api.png",
        text: "Call an URL"
    }];

    return (<div>
        {data.map(function (d, idx) {
            return (<div key={idx} style={{backgroundColor: d.color}}>
                <img src={d.image} alt="Hello"/>
                <h3>{d.text}</h3>
            </div>
            )})};
    </div>)
}

function Content() {
    return (<Service/>);
}

function Connected() {
    return (<div id="flex-div">
        <Header isAuthenticated={true}></Header>
        <Content/>
    </div>);
}

export default Connected;