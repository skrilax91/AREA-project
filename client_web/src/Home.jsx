import React from "react";
import {Link} from "react-router-dom";
import "./css/home.css";
import Header from "./components/header";

function Content() {
    return (<section>
        <div className="home-content">
            <h1>Every thing works
                better together</h1>
            <p>Quickly and easily automate your favorite apps and devices.</p>
            <div id="content-link">
                <Link to="register">Start today</Link>
            </div>
        </div>
        <div className="bg-circle"></div>
    </section>);
}

function Home() {
    return (
        <>
            <Header/>
            <Content/>
        </>
    );
}

export default Home;