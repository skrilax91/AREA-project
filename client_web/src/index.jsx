import React from 'react';
import reportWebVitals from "./reportWebVitals";
import {createRoot} from 'react-dom/client';
import {createBrowserRouter, RouterProvider} from "react-router-dom";
import "./css/global.css";

import Home from "./Home";
import Login from "./Login";
import Register from "./Register";

const router = createBrowserRouter([{
    path: "/",
    element: <Home/>,
}, {
    path: "/login",
    element: <Login/>,
}, {
    path: "/register",
    element: <Register/>,
},]);

const root = createRoot(document.getElementById('App'));
root.render(<React.StrictMode>
    <RouterProvider router={router}/>
</React.StrictMode>);

reportWebVitals();
