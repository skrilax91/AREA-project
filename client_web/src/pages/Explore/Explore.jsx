import React from "react";
import {Link} from "react-router-dom";

import Header from "../../components/Header";
import style from "./explore.module.css"

function Content() {
    return (
        <section className={style.exploreSection}>
            <div className={style.exploreContent}>
                <h1>Explore</h1>
            </div>
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