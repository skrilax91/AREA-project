import React from 'react';

import Header from './components/header.js';
import reportWebVitals from "./reportWebVitals";
import ReactDOM from 'react-dom';

function Home() {
    return (<section>
            <div className="home-content">
                <h1>Every thing works
                    better together</h1>
                <p>Quickly and easily automate your favorite apps and devices.</p>
                <div id="content-link">
                    <a href="register.html">Start today</a>
                </div>
            </div>
            <div className="bg-circle"></div>
        </section>
    );
}

function App() {
    return (
        <div>
            <Header/>
            <Home/>
        </div>
    );
}


const root = ReactDOM.createRoot(document.getElementById('App'));
root.render(
    <React.StrictMode>
        <App/>
    </React.StrictMode>
);

reportWebVitals();
