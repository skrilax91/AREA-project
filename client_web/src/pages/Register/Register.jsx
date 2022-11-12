import React, {useState} from "react";
import "../../components/header.module.css";
import style from "../Login/login.module.css";
import Header from "../../components/Header";
import registerRequest from "./register";
import {useNavigate} from "react-router-dom";

function Content() {
    let navigate = useNavigate();

    const [message, setMessage] = useState("");

    let handleSubmit = (event) => {
        event.preventDefault();
        let email = event.target[0].value;
        let password = event.target[1].value;
        let rememberMe = event.target[2].value;
        let data = registerRequest(email, password, rememberMe)
            .then(async response => {
                const data = await response.json();

                if (!response.ok) {
                    const error = (data && data.message) || response.statusText;
                    setMessage("Error : " + error);
                    return Promise.reject(error);
                }
                setMessage("Account created !");

            });
    }

    return (
        <section className="loginSection">
            <h1 className={style.loginMessage}>Register</h1>
            <form className={style.loginForm} onSubmit={handleSubmit}>
                <input className={style.loginInput} type="email" placeholder="Email"/>
                <input className={style.loginInput} type="password" placeholder="Password"/>
                <h1>{message}</h1>
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