export default function registerRequest(email, password) {
    return fetch("server/api/auth/register", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            username: email,
            password: password,
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

