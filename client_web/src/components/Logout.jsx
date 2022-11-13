import {useNavigate} from "react-router-dom";
import React from 'react';

export default function Logout() {
    let navigate = useNavigate();

    localStorage.removeItem("user");
    navigate("/");
    return <></>;
}

