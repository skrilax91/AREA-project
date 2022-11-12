import React, {useState} from "react";
import "../../components/header.module.css";
import style from "../Login/login.module.css";
import Header from "../../components/Header";
import registerRequest from "./register";

function Content() {
    const [message, setMessage] = useState("");

    let handleSubmit = (event) => {
        event.preventDefault();
        let email = event.target[0].value;
        let password = event.target[1].value;
        registerRequest(email, password)
            .then(async response => {
                const data = await response.json();
                if (data.token) {
                    localStorage.setItem("user", JSON.stringify(data));
                }
                if (!response.ok) {
                    const error = (data && data.message) || response.statusText;
                    setMessage("Error : " + error);
                    return;
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
        <Content/>
    </div>);
}

export default Register;