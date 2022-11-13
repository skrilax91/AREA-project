import React, {useEffect, useState} from "react";
import style from "./applets.module.css"
import appletsRequest from "./applets";
import Service from "../../components/Services";


function Content() {
    const [data, setData] = useState([]);

    useEffect(() => {
        appletsRequest()
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

    console.log(data)
    return (
        <section className={style.appletsSection}>
            <div className={style.appletsContent}>
                <h1>My Applets</h1>
            </div>
            {(data.length === 0) ? <div className={style.noApplets}>No applets...</div> : <Service data={data}/>}
            <div className={style.bgCircle}></div>
        </section>
    );
}

function Applets() {
    return (
        <div>
            <Content/>
        </div>
    );
}

export default Applets;