import React, {useEffect, useState} from 'react';
import {BrowserRouter, Route, Routes} from "react-router-dom";

import Home from "./pages/Home/Home";
import Login from "./pages/Login/Login";
import Connected from "./pages/Connected/connected";
import Service from "./pages/Services/Services";
import Register from "./pages/Register/Register";
import Header from "./components/Header";
import NoMatch from "./pages/notFound/notFound";
import {createRoot} from "react-dom/client";
import reportWebVitals from "./reportWebVitals";

function Protected({isLoggedIn, element}) {
    return (
        <>
            {(isLoggedIn === true) ? (element) : (<NoMatch/>)}
        </>
    );
}

function App() {
    const [isLoggedIn, setIsLoggedIn] = useState(false);

    useEffect(() => {
        return () => {
            setIsLoggedIn(localStorage.getItem("user") !== null);
        };
    }, [localStorage.getItem("user")]);

    return (
        <>
            <Header isAuthenticated={isLoggedIn}/>
            <h1>{isLoggedIn ? "connected" : "not connected"}</h1>
            <Routes>
                <Route index element={<Home/>}/>
                <Route path="/login" element={<Login/>}/>
                <Route path="/register" element={<Register/>}/>
                <Route path="/connected" element={<Protected isLoggedIn={isLoggedIn}><Connected/></Protected>}/>
                <Route path="/service" element={<Protected isLoggedIn={isLoggedIn}><Service/></Protected>}/>
                <Route path="*" element={<NoMatch/>}/>
            </Routes>
        </>
    )
}

const root = createRoot(document.getElementById('Index'));
root.render(
    <React.StrictMode>
        <BrowserRouter>
            <App/>
        </BrowserRouter>
    </React.StrictMode>
);

reportWebVitals();
