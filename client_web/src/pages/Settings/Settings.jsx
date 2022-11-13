import React, {useEffect, useState} from "react";
import style from "./settings.module.css"
import settingsRequest from "./settings";

function Content() {

    const [data, setData] = useState({});

    useEffect(() => {
        settingsRequest()
            .then(async response => {
                const data = await response.json();
                if (!response.ok) {
                    const error = (data && data.message) || response.statusText;
                    console.log(error);
                    return;
                }
                setData(data);
            });
    }, []);
    console.log(data);

    return (
        <section className={style.settingsSection}>
            <div className={style.settingsContent}>
                <h4>Account Settings</h4>
                <h2>Profile</h2>
                <p>Customize your account by adding a profile service.</p>
                <h2>Account</h2>
                <h1>Email : {data.email}</h1>

                <h1>Account created at : {data.createdAt}</h1>

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