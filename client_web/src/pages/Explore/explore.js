export default function exploreRequest() {
    return fetch("http://localhost:8080/api/services", {
        method: "GET",
    });
}

