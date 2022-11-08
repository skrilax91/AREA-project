import React from "react";
import {Link} from "react-router-dom";
import s from "./header.css";

function Logo() {
    return (
        <h1 className={s.headerText}><Link to="/">AREA</Link></h1>
    );
}

function NonAuthenticatedButtons() {
    return (
        <ul className={s.headerUl}>
            <li className={s.headerLi} id="login"><Link className={s.btnHeader} to="login">Login</Link></li>
            <li className={s.headerLi}><Link className={s.btnHeader} to="login">Get Started</Link></li>
        </ul>
    );
}

function AuthenticatedButtons() {
    return (
        <ul className={s.headerUl}>
            <li className={s.headerLi} id="login"><Link className={s.btnHeader} to="settings">Settings</Link></li>
            <li className={s.headerLi}><Link className={s.btnHeader} to="create">Create</Link></li>
        </ul>
    );
}

function Header(isAuthenticated) {
    if (isAuthenticated === true) {
        return (
            <header className={s.header}>
                <Logo/>
                <AuthenticatedButtons/>
            </header>
        );
    } else {
        return (
            <header className={s.header}>
                <Logo/>
                <NonAuthenticatedButtons/>
            </header>
        )
    }
}

export default Header;