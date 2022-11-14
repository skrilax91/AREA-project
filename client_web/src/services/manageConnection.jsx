export function removeSessionStorageToken() {
    return setSessionStorageToken();
}

export function setSessionStorageToken(userToken = null) {
    if (!userToken)
        localStorage.removeItem('token');
    else
        localStorage.setItem('token', userToken);
    window.dispatchEvent(new Event('token'));
    console.log("Token set in session storage");
}

export function getSessionStorageToken() {
    return localStorage.getItem('token');
}

