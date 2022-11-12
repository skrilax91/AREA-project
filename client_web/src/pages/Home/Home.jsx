import React from "react";
import {Link} from "react-router-dom";

import style from "./home.module.css";
import Header from "../../components/Header";

function Content() {
    return (<section className={style.homeSection}>
        <div className={style.homeContent}>
            <h1>Every thing works</h1>
            <h1>better together</h1>
            <p>Quickly and easily automate your favorite apps and devices.</p>
            <div className={style.contentLink}>
                <Link className={style.btnHeader} to="register">Start today</Link>
            </div>
        </div>
        <div className={style.bgCircle}></div>
    </section>);
}

function Home() {
    return (
        <div>
            <Header isAuthenticated={false}/>
            <Content/>
        </div>
    );
}

export default Home;