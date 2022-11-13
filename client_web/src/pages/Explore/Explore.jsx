import React, {useEffect, useState} from "react";
import style from "./explore.module.css"
import Service from "../../components/Services";
import exploreRequest from "./explore";

function Content() {
    const [data, setData] = useState([]);

    useEffect(() => {
        exploreRequest()
            .then(async response => {
                const data = await response.json();
                if (!response.ok) {
                    const error = (data && data.message) || response.statusText;
                    console.log(error);
                    return;
                }
                setData(data.services);
            });
    }, []);

    return (
        <section className={style.exploreSection}>
            <div className={style.exploreContent}>
                <h1>Explore</h1>
            </div>
            <Service data={data}/>
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