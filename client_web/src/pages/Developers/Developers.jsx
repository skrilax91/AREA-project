import React from "react";
import {Link} from "react-router-dom";

import Header from "../../components/Header";
import style from "./developers.module.css"

function Content() {
    return (
        <section className={style.developersSection}>
            <div className={style.developersContent}>
                <h1>for Developers</h1>
                <h2>Your API is the key to</h2>
                <h2>unlimited possibilities</h2>
                <p>Connect to an ecosystem of 700+ services and tens</p>
                <p>of millions of users. Build an AREA integration and</p>
                <p>gain hundreds of new feature possibilities to offer your users.</p>
                <div className={style.contentLink}>
                    <Link>Start building</Link>
                </div>
            </div>
            <div className={style.bgCircle}></div>
        </section>
    );
}

function Developers() {
    return (
        <div>
            <Content/>
        </div>
    );
}

export default Developers;