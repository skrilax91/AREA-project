import React from "react";
import "../../components/header.module.css";
import style from "../Login/login.module.css";
import Header from "../../components/Header";
import registerRequest from "./register";

function Content() {
    let handleSubmit = (event) => {
        event.preventDefault();
        let email = event.target[0].value;
        let password = event.target[1].value;
        let rememberMe = event.target[2].value;
        registerRequest(email, password, rememberMe);
    }

    return (
        <section className="loginSection">
            <h1 className={style.loginMessage}>Register</h1>
            <form className={style.loginForm} onSubmit={handleSubmit}>
                <input className={style.loginInput} type="email" placeholder="Email"/>
                <input className={style.loginInput} type="password" placeholder="Password"/>
                <button className={style.loginButton} type="submit">Log in</button>
            </form>
        </section>);
}

function Register() {
    return (<div>
        <Header isAuthenticated={false}/>
        <Content/>
    </div>);
}

export default Register;