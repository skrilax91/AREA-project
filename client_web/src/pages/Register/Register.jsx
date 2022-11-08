import React from "react";
import "../../components/header.css";

function Register() {
    return (<div id="app">
        <header>
            <h1><a href="index.html">AREA</a></h1>

            <ul>
                <li id="login"><a href="login.html">Login</a></li>
                <li><a id="register" href="./register.html">Get Started</a></li>
            </ul>
        </header>
        <section>
            <h1>Sign up</h1>
            <form>
                <input type="email" placeholder="Email" />
                <input type="email" placeholder="Password" />
                <button type="submit">Get started</button>
            </form>
        </section>
    </div>);
}

export default Register;