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
        .then(data => {
            if (data.ok) {
                console.log("Registration successful");
                return data.json();
            }
            return data;
        });
}

