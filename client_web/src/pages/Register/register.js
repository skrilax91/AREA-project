export default function registerRequest(email, password) {
    return fetch("http://localhost:8080/api/auth/register", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Access-Control-Allow-Origin": "*",
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

