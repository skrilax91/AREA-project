import React from "react";
import style from "./settings.module.css"

function Content() {
    return (
        <section className={style.settingsSection}>
            <div className={style.settingsContent}>
                <h4>Account Settings</h4>
                <h2>Profile</h2>
                <p>Customize your account by adding a profile service.</p>
                <h2>Account</h2>
                <h1>Username</h1>

                <h1>Password</h1>

                <h1>Email</h1>

                <h1>Time zone</h1>

                <h2>Linked accounts</h2>
                <p> You can use these to quickly log into your AREA account.</p>
            </div>
            <div className={style.bgCircle}></div>
        </section>
    );
}

function Settings() {
    return (
        <div>
            <Content/>
        </div>
    );
}

export default Settings;