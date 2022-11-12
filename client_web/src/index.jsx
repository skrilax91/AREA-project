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
import Logout from "./components/Logout";

function setToken(userToken) {
    sessionStorage.setItem('token', JSON.stringify(userToken));
}

function getToken() {
    const tokenString = sessionStorage.getItem('token');
    const userToken = JSON.parse(tokenString);
    return userToken?.token
}

function Protected({isLoggedIn, element}) {
    return (
        <>
            {(isLoggedIn === true) ? (element) : (<NoMatch/>)}
        </>
    );
}

function App() {
    const [Token, setToken] = useState(false);
    useEffect(() => {
        return () => {
            setToken(localStorage.getItem("user") !== null);
        };
    }, [localStorage.getItem("user")]);

    return (
        <>
            <Header isAuthenticated={Token}/>
            <Routes>
                <Route index element={<Home/>}/>
                <Route path="/login" element={<Login/>}/>
                <Route path="/register" element={<Register/>}/>
                <Route path="/connected" element={<Protected isLoggedIn={Token}><Connected/></Protected>}/>
                <Route path="/service" element={<Protected isLoggedIn={Token}><Service/></Protected>}/>
                <Route path="/logout" element={<Logout/>}/>
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
