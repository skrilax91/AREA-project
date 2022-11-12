import React from 'react';
import reportWebVitals from "./reportWebVitals";
import {createRoot} from 'react-dom/client';
import {BrowserRouter, Route, Routes} from "react-router-dom";

import Home from "./pages/Home/Home";
import Login from "./pages/Login/Login";
import Connected from "./pages/Connected/connected";
import Service from "./pages/Services/Services";
import Register from "./pages/Register/Register";
import Explore from './pages/Explore/Explore';
import Developers from './pages/Developers/Developers';
import Applets from './pages/Applets/Applets';
import Create from './pages/Create/Create';
import Settings from './pages/Settings/Settings';


function Index() {
    return (<React.StrictMode>
            <BrowserRouter>
                <Routes>
                    <Route index element={<Home/>}/>
                    <Route path="/login" element={<Login/>}/>
                    <Route path="/register" element={<Register/>}/>
                    <Route path="/connected" element={<Connected/>}/>
                    <Route path="/service" element={<Service/>}/>
                    <Route path="/explore" element={<Explore/>}/>
                    <Route path="/dev" element={<Developers/>}/>
                    <Route path="/applets" element={<Applets/>}/>
                    <Route path="/create" element={<Create/>}/>
                    <Route path="/settings" element={<Settings/>}/>
                </Routes>
            </BrowserRouter>
        </React.StrictMode>
    )
}

const root = createRoot(document.getElementById('Index'));
root.render(<Index/>);

reportWebVitals();
