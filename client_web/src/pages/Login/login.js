import React from "react";


export default function loginRequest(email, password, rememberMe) {
    return fetch("http://localhost:8080/api/auth/login", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            username: email,
            password: password,
            rememberMe: rememberMe
        })
    })
        .then(response => response.json())
        .then(data => {
            if (data.token) {
                localStorage.setItem("user", JSON.stringify(data));
            }
            return data;
        });
}

