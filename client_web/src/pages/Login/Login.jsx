import React, {useState} from "react";
import loginRequest from "./login"

import style from "./login.module.css";
import {useNavigate} from "react-router-dom";

function Content() {
    const [message, setMessage] = useState("");
    let navigate = useNavigate();

    let handleSubmit = (event) => {
        event.preventDefault();
        let email = event.target[0].value;
        let password = event.target[1].value;
        let rememberMe = event.target[2].value;
        loginRequest(email, password, rememberMe)
            .then(async response => {
                const data = await response.json();
                if (!response.ok || data.token === undefined) {
                    const error = (data && data.message) || response.statusText;
                    setMessage("Error : " + error);
                    return;
                }
                localStorage.setItem("user", JSON.stringify(data));
                navigate("/connected");
            });
    }

    return (
        <section className="loginSection">
            <h1 className={style.loginMessage}>Log in</h1>
            <form className={style.loginForm} onSubmit={handleSubmit}>
                <input className={style.loginInput} type="email" placeholder="Email"/>
                <input className={style.loginInput} type="password" placeholder="Password"/>
                <input type="checkbox" value="lsRememberMe" id="rememberMe"/>
                <label>Remember me</label>
                <h1>{message}</h1>
                <button className={style.loginButton} type="submit">Log in</button>
            </form>
        </section>);
}

function Login() {
    return (<div>
        <Content/>
    </div>);
}

export default Login;