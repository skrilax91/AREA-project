import React from "react";
import {Link} from "react-router-dom";
import "../css/global.css";

function Logo() {
    return (
        <h1><Link to="/">AREA</Link></h1>
    );
}

function Buttons() {
    return (
        <ul>
            <li id="login"><Link to="login">Login</Link></li>
            <li><Link id="register" to="login">Get Started</Link></li>
        </ul>
    );
}

function Header() {
    return (
        <header>
            <Logo />
            <Buttons />
        </header>
    )
}

export default Header;