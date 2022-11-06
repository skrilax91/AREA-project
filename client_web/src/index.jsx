import React from 'react';
import reportWebVitals from "./reportWebVitals";
import {createRoot} from 'react-dom/client';
import {BrowserRouter, Route, Routes} from "react-router-dom";

import Home from "./Home";
import Login from "./Login";
import Connected from "./Connected";

function App() {
    return (<React.StrictMode>
            <BrowserRouter>
                <Routes>
                    <Route index element={<Home/>}/>
                    <Route path="/login" element={<Login/>}/>
                    <Route path="/connected" element={<Connected/>}/>
                </Routes>
            </BrowserRouter>
        </React.StrictMode>
    )
}

const root = createRoot(document.getElementById('App'));
root.render(<App/>);

reportWebVitals();
