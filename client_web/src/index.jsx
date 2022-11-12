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
import Plans from './pages/Plans/Plans';
import Developers from './pages/Developers/Developers';

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
                    <Route path="/plans" element={<Plans/>}/>
                    <Route path="/dev" element={<Developers/>}/>
                </Routes>
            </BrowserRouter>
        </React.StrictMode>
    )
}

const root = createRoot(document.getElementById('Index'));
root.render(<Index/>);

reportWebVitals();
