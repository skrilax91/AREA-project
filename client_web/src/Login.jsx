import React from "react";
import Header from "./components/header";
import "./css/loginRegister.css";

function Content() {
    return (
        <section>
            <h1>Log in</h1>
            <form>
                <input type="email" placeholder="Email"/>
                <input type="email" placeholder="Password"/>
                <button type="submit">Log in</button>
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