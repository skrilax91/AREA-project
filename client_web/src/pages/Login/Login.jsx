import React, {useState} from "react";
import { loginRequest, googleOauth } from "./login"
import { setSessionStorageToken } from "../../services/manageConnection";
import style from "./login.module.css";
import {useNavigate} from "react-router-dom";
import { GoogleOAuthProvider, GoogleLogin } from '@react-oauth/google';
import jwt_decode from "jwt-decode";


function Content() {
    const [message, setMessage] = useState("");
    let navigate = useNavigate();

    const responseGoogle = (response) => {
        const userObject = jwt_decode(response.credential);
        googleOauth(userObject).then(async (res) => {
            const data = await res.json();
            
            if (!res.ok || data.token === undefined) {
                const error = (data && data.message) || res.statusText;
                setMessage("Error : " + error);
                return;
            }
            setSessionStorageToken(data.token);
            navigate("/applets");
        })
    }

    let handleSubmit = (event) => {
        event.preventDefault();
        let email = event.target[0].value;
        let password = event.target[1].value;
        let rememberMe = event.target[2].value;
        loginRequest(email, password, rememberMe)
            .then(async response => {
                const data = await response.json();
                if (!response.ok || data.token === undefined) {
                    const error = (data && data.message) || response.statusText;
                    setMessage("Error : " + error);
                    return;
                }
                setSessionStorageToken(data.token);
                navigate("/applets");
            });
    }

    return (
        <section className="loginSection">
            <h1 className={style.loginMessage}>Log in</h1>
            <form className={style.loginForm} onSubmit={handleSubmit}>
                <input className={style.loginInput} type="email" placeholder="Email"/>
                <input className={style.loginInput} type="password" placeholder="Password"/>
                <input type="checkbox" value="lsRememberMe" id="rememberMe"/>
                <label>Remember me</label>
                <h1>{message}</h1>
                <button className={style.loginButton} type="submit">Log in</button>
            </form>
            <div className="">
                <GoogleOAuthProvider clientId={`${process.env.REACT_APP_GOOGLE_OAUTH_CLIENT_ID}`} >
                    <GoogleLogin render={(renderProps) => (
                        <button
                        type="button"
                        className=""
                        onClick={renderProps.onClick}
                        disabled={renderProps.disabled}
                        >
                         Sign in with google
                        </button>
                    )}
                    onSuccess={responseGoogle}
                    onFailure={responseGoogle}
                    cookiePolicy="single_host_origin"
                    />
                </GoogleOAuthProvider>
          </div>
        </section>);
}

function Login() {
    return (<div>
        <Content/>
    </div>);
}

export default Login;