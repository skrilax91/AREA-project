import React from "react";
import {Link} from "react-router-dom";
import s from "./header.module.css";

function Logo() {
    return (
        <h1 className={s.headerText}><Link to="/">AREA</Link></h1>
    );
}

function NonAuthenticatedButtons() {
    return (
        <ul className={s.headerUl}>
            <li className={s.headerLi}><Link className={s.btnHeader} to="/explore">Explore</Link></li>
            <li className={s.headerLi}><Link className={s.btnHeader} to="/dev">Developers</Link></li>
            <li className={s.headerLi} id="login"><Link className={s.btnHeader} to="/login">Log in</Link></li>
            <li className={s.headerLi}><Link className={s.btnHeader} to="/register">Get Started</Link></li>
        </ul>
    );
}

function AuthenticatedButtons() {
    return (
        <ul className={s.headerUl}>
            <li className={s.headerLi}><Link className={s.btnHeader} to="/applets">My Applets</Link></li>
            <li className={s.headerLi}><Link className={s.btnHeader} to="/explore">Explore</Link></li>
            <li className={s.headerLi}><Link className={s.btnHeader} to="/dev">Developers</Link></li>
            <li className={s.headerLi}><Link className={s.btnHeader} to="/create">Create</Link></li>
            <li className={s.headerLi}><Link className={s.btnHeader} to="/logout">Logout</Link></li>
            <li className={s.headerLi} id="login"><Link className={s.btnHeader} to="/settings">Settings</Link></li>
        </ul>
    );
}

function Header(isAuthenticated) {
    return (
        <header>
            <Logo/>
            {isAuthenticated ? <AuthenticatedButtons/> : <NonAuthenticatedButtons/>}
        </header>
    );
}

export default Header;