import ReactDOM from "react-dom";
import React from "react";
import reportWebVitals from "./reportWebVitals";

import Header from "./components/header";

function Login() {
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

function App() {
    return (<div>
        <Header/>
        <Login/>
    </div>);
}

const root = ReactDOM.createRoot(document.getElementById('App'));
root.render(
    <React.StrictMode>
        <App/>
    </React.StrictMode>
);

reportWebVitals();
