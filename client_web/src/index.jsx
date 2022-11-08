import React from 'react';
import reportWebVitals from "./reportWebVitals";
import {createRoot} from 'react-dom/client';
import {BrowserRouter, Route, Routes} from "react-router-dom";

import Home from "./pages/Home/Home";
import Login from "./pages/Login/Login";
import Connected from "./pages/Connected/connected";
import Service from "./pages/Services/Services";

function Index() {
    return (<React.StrictMode>
            <BrowserRouter>
                <Routes>
                    <Route index element={<Home/>}/>
                    <Route path="/login" element={<Login/>}/>
                    <Route path="/connected" element={<Connected/>}/>
                    <Route path="/service" element={<Service/>}/>
                </Routes>
            </BrowserRouter>
        </React.StrictMode>
    )
}

const root = createRoot(document.getElementById('Index'));
root.render(<Index/>);

reportWebVitals();
