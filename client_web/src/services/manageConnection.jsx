export function removeSessionStorageToken() {
    localStorage.removeItem('token');
    window.dispatchEvent(new Event('token'))
    console.log("Token remove from session storage");
}

export function setSessionStorageToken(userToken) {
    localStorage.setItem('token', userToken);
    window.dispatchEvent(new Event('token'));
    console.log("Token set in session storage");
}

export function getSessionStorageToken() {
    return localStorage.getItem('token');
}

