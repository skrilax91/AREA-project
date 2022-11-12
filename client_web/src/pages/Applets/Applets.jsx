import React from "react";
import {Link} from "react-router-dom";

import Header from "../../components/Header";
import style from "./applets.module.css"

function Content() {
    return (
        <section className={style.appletsSection}>
            <div className={style.appletsContent}>
                <h1>My Applets</h1>
            </div>
            <div className={style.bgCircle}></div>
        </section>
    );
}

function Applets() {
    return (
        <div>
            <Header isAuthenticated={false}/>
            <Content/>
        </div>
    );
}

export default Applets;