import {useNavigate} from "react-router-dom";
import React, {useEffect} from 'react';
import {removeSessionStorageToken, getSessionStorageToken} from "../services/manageConnection";

export default function Logout() {
    let navigate = useNavigate();

    fetch("http://localhost:8080/api/auth/logout", {
        method: "GET",
        headers: {
            "X-AUTH-TOKEN": getSessionStorageToken()
        }
    }).then(r => {
        if (r.ok) {
            console.log("Logout successful");
        }
    });
    removeSessionStorageToken();
    useEffect(() => {
        return () => {
            navigate("/");
        };
    }, []);
    return <></>;
}

