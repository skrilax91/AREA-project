import React from "react";

function Logo() {
    return (
        <h1><a href="/">AREA</a></h1>
    );
}

function Buttons() {
    return (
        <ul>
            <li id="login"><a href="login.html">Login</a></li>
            <li><a id="register" href="register.html">Get Started</a></li>
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