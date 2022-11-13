import {getSessionStorageToken} from "../../services/manageConnection";

export default function appletsRequest() {
    return fetch("http://localhost:8080/api/area", {
        method: "GET",
        headers: {
            "X-AUTH-TOKEN": getSessionStorageToken()
        }
    });
}

