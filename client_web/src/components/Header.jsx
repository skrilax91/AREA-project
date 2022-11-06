import React from "react";
import {Link} from "react-router-dom";
import style from "./header.module.css";

function Logo() {
    return (
        <h1 className={style.headerText}><Link to="/">AREA</Link></h1>
    );
}

function Buttons() {
    return (
        <ul className={style.headerUl}>
            <li className={style.headerLi} id="login"><Link className={style.btnHeader} to="login">Login</Link></li>
            <li className={style.headerLi}><Link className={style.btnHeader} to="login">Get Started</Link></li>
        </ul>
    );
}

function Header() {
    return (
        <header className={style.header}>
            <Logo />
            <Buttons />
        </header>
    )
}

export default Header;