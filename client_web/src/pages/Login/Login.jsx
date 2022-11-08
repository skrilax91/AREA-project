import React, {useEffect} from "react";
import Header from "../../components/Header";
import loginRequest from "./login"

import style from "./login.css";

function Content() {
    let handleSubmit = (event) => {
        event.preventDefault();
        let email = event.target[0].value;
        let password = event.target[1].value;
        let rememberMe = event.target[2].value;

        useEffect(() => {
            loginRequest(email, password, rememberMe);
        }, []);

    }
    return (
        <section className="loginSection">
            <h1 className={style.loginMessage}>Log in</h1>
            <form className={style.loginForm} onSubmit={handleSubmit}>
                <input className={style.loginInput} type="email" placeholder="Email"/>
                <input className={style.loginInput} type="password" placeholder="Password"/>
                <input type="checkbox" value="lsRememberMe" id="rememberMe"/>
                <button className={style.loginButton} type="submit">Log in</button>
            </form>
        </section>);
}

function Login() {
    return (<div>
        <Header isAuthenticated={false}/>
        <Content/>
    </div>);
}

export default Login;