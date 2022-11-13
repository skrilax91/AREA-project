import React from "react";

export default function Service({data}) {
    console.log(data)
    return (<div>
        {data.map(function (d, idx) {
            return (<div key={idx} id={d.uuid} style={{backgroundColor: d.active ? "green" : "grey"}}>
                <h2> {d.name}</h2>
                <h1> {d.description ? d.description : "No description"}</h1>
            </div>);
        })}
    </div>);
}