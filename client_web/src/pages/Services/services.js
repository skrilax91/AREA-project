import {getSessionStorageToken} from "../../services/manageConnection";

export default function servicesRequest() {
    return fetch("http://localhost:8080/api/services", {
        method: "GET",
    });
}

