import React from "react";
import {Link} from "react-router-dom";

import Header from "../../components/Header";
import style from "./create.module.css"

function Content() {
    return (
        <section className={style.createSection}>
            <div className={style.createContent}>
                <h3>Create</h3>
                <h1>You're using 1 of 5 applets</h1>
            </div>
            <div className={style.bgCircle}></div>
        </section>
    );
}

function Create() {
    return (
        <div>
            <Header isAuthenticated={false}/>
            <Content/>
        </div>
    );
}

export default Create;