import {useNavigate} from "react-router-dom";
import React, {useEffect, useState} from 'react';

export default function Logout() {
    let navigate = useNavigate();

    fetch("http://localhost:8080/api/auth/logout", {
        method: "GET",
        headers: {
            "X-AUTH-TOKEN": JSON.parse(localStorage.getItem("user")).token,
        }
    }).then(data => {
        if (data.status === 200) {
            localStorage.removeItem("user");
            navigate("/");
        }
    });
    return <></>;
}

