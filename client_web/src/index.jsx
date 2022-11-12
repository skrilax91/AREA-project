import React, {useState} from 'react';
import {BrowserRouter, Route, Routes} from "react-router-dom";

import Home from "./pages/Home/Home";
import Login from "./pages/Login/Login";
import Connected from "./pages/Connected/connected";
import Service from "./pages/Services/Services";
import Register from "./pages/Register/Register";
import Header from "./components/Header";
import NoMatch from "./pages/notFound/notFound";
import {createRoot} from "react-dom";
import reportWebVitals from "./reportWebVitals";


function App() {
    const [isLoggedIn, setIsLoggedIn] = useState(false);

    return (
        <>
            <Header isAuthenticated={isLoggedIn}/>
            <Routes>
                <Route index element={<Home/>}/>
                <Route path="/login" element={<Login/>}/>
                <Route path="/register" element={<Register/>}/>
                <Route path="/connected" element={<Connected/>}/>
                <Route path="/service" element={<Service/>}/>
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
