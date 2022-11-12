import React from "react";
import {Link} from "react-router-dom";

import Header from "../../components/Header";
import style from "./plans.module.css"

function Content() {
    return (
        <section className={style.plansSection}>
            <div className={style.plansContent}>
                <h1>Find the plan for you</h1>
                <p>Get the tools that help every thing</p>
                <p> work better together.</p>
            </div>
            <div className={style.bgCircle}></div>
        </section>
    );
}

function Plans() {
    return (
        <div>
            <Header isAuthenticated={false}/>
            <Content/>
        </div>
    );
}

export default Plans;