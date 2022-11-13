export default function registerRequest(email, password) {
    return fetch("http://localhost:8080/api/auth/register", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            username: email,
            password: password,
        })
    });
}

