import React, {useEffect, useState} from 'react';
import {BrowserRouter, Route, Routes} from "react-router-dom";

import Home from "./pages/Home/Home";
import Login from "./pages/Login/Login";
import Connected from "./pages/Connected/connected";
import Service from "./pages/Services/Services";
import Register from "./pages/Register/Register";
import Header from "./components/Header";
import NoMatch from "./pages/notFound/notFound";
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
import Explore from './pages/Explore/Explore';
import Developers from './pages/Developers/Developers';
import Applets from './pages/Applets/Applets';
import Create from './pages/Create/Create';
import Settings from './pages/Settings/Settings';


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
                <Route path="/explore" element={<Explore/>}/>
                <Route path="/dev" element={<Developers/>}/>
                <Route path="/applets" element={<Applets/>}/>
                <Route path="/create" element={<Create/>}/>
                <Route path="/settings" element={<Settings/>}/>
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
