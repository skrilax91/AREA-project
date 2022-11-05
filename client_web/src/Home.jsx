import React from "react";
import {Link} from "react-router-dom";

import style from "./styles/home.module.css";
import Header from "./components/Header";

function Content() {
    return (<section className={style.section}>
        <div className={style.homeContent}>
            <h1>Every thing works
                better together</h1>
            <p>Quickly and easily automate your favorite apps and devices.</p>
            <div className={style.contentLink}>
                <Link className={style.register} to="register">Start today</Link>
            </div>
        </div>
        <div className={style.bgCircle}></div>
    </section>);
}

function Home() {
    return (
        <div className={style.body}>
            <Header className={style.header}/>
            <Content/>
        </div>
    );
}

export default Home;