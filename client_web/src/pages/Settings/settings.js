import {getSessionStorageToken} from "../../services/manageConnection";

export default function settingsRequest() {
    return fetch("http://localhost:8080/api/user/profile", {
        method: "GET",
        headers: {
            "X-AUTH-TOKEN": getSessionStorageToken()
        }
    });
}

