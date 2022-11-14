export function loginRequest(email, password, rememberMe) {
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
    });
}

export function googleOauth(credentials) {
    return fetch("http://localhost:8080/api/0auth/google", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            credentials
        })
    });
}

