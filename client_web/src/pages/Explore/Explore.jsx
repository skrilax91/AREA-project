import React, {useEffect, useState} from "react";
import style from "./explore.module.css"
import servicesRequest from "./explore";

function Service() {
    const [data, setData] = useState([]);

    useEffect(() => {
        servicesRequest()
            .then(async response => {
                const data = await response.json();
                if (!response.ok) {
                    const error = (data && data.message) || response.statusText;
                    console.log(error);
                    return;
                }
                setData(data);
            });
    }, []);
    console.log(data);


    return (<div>
        {data.map(function (d, idx) {
            return (<div key={idx} style={{backgroundColor: d.color}}>
                <input type="checkbox" id={d.uuid}/><label htmlFor={d.uuid}>{d.name}</label>
            </div>);
        })}
    </div>);
}

function Content() {
    return (
        <section className={style.exploreSection}>
            <div className={style.exploreContent}>
                <h1>Explore</h1>
            </div>
            <Service/>
            <div className={style.bgCircle}></div>
        </section>
    );
}

function Explore() {
    return (
        <div>
            <Content/>
        </div>
    );
}

export default Explore;