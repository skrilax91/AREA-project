import React, {useEffect, useState} from 'react';
import {BrowserRouter, Route, Routes} from "react-router-dom";

import Home from "./pages/Home/Home";
import Login from "./pages/Login/Login";
import Connected from "./pages/Connected/connected";
import Register from "./pages/Register/Register";
import Header from "./components/Header";
import NoMatch from "./pages/notFound/notFound";
import Logout from "./components/Logout";
import Explore from './pages/Explore/Explore';
import Developers from './pages/Developers/Developers';
import Applets from './pages/Applets/Applets';
import Create from './pages/Create/Create';
import Settings from './pages/Settings/Settings';
import reportWebVitals from "./reportWebVitals";
import {createRoot} from "react-dom/client";

function Protected({isLoggedIn, perm, noPerm = <NoMatch/>}) {
    return (
        <>
            {(isLoggedIn === true) ? (perm) : (noPerm)}
        </>
    );
}


function App() {
    const [isConnected, setIsConnected] = useState(localStorage.getItem('token') !== null);

    useEffect(() => {
        function checkUserData() {
            const item = localStorage.getItem('token');
            console.log(item + " is the token");
            if (item) {
                setIsConnected(true);
            } else {
                setIsConnected(false);
            }
        }
        window.addEventListener('token', checkUserData)
        return () => {
            window.removeEventListener('token', checkUserData)
        }
    }, [])

    return (
        <>
            <Header isConnected={isConnected}/>
            <Routes>
                <Route index element={<Home/>}/>
                <Route path="/login" element={<Login/>}/>
                <Route path="/register" element={<Register/>}/>
                <Route path="/connected" element={<Protected isLoggedIn={isConnected} perm={<Connected/>}/>}/>
                <Route path="/logout" element={<Protected isLoggedIn={isConnected} perm={<Logout/>}/>}/>
                <Route path="/explore" element={<Explore/>}/>
                <Route path="/dev" element={<Developers/>}/>
                <Route path="/applets" element={<Applets/>}/>
                <Route path="/create" element={<Create/>}/>
                <Route path="/settings" element={<Protected isLoggedIn={isConnected} perm={<Settings/>}/>}/>
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
