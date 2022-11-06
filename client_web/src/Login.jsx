import React from "react";
import Header from "./components/Header";

import style from "./styles/login.module.css";

function Content() {
    return (
        <section className={style.loginSection}>
            <h1 className={style.loginMessage}>Log in</h1>
            <form className={style.loginForm}>
                <input className={style.loginInput} type="email" placeholder="Email"/>
                <input className={style.loginInput} type="email" placeholder="Password"/>
                <button className={style.loginButton} type="submit">Log in</button>
            </form>
        </section>);
}

function Login() {
    return (<div>
        <Header/>
        <Content/>
    </div>);
}

export default Login;