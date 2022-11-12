import React from "react";
import "./notFound.css";
import {Link} from "react-router-dom";

export default function NoMatch() {
    return (<div className="message">
        <a href="/">
            <img src="//web-assets.ifttt.com/packs/media/shared/404_unicorn-f58af7c3b400a9876ab3.svg" alt="404 error"
                 className="error-image"/>
        </a>

        <h1>The requested page or file does not exist. Explore <Link to="/home">Applets</Link> instead!
        </h1>
    </div>);
}
