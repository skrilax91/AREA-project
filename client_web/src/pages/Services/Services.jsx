import React, {useEffect, useState} from 'react';
import servicesRequest from "./services";
import Service from "../../components/Services";


function Content() {
    const [data, setData] = useState([]);

    useEffect(() => {
        servicesRequest()
            .then(async response => {
                const data = await response.json();
                if (!response.ok) {
                    const error = (data && data.message) || response.statusText;
                    console.log(error);
                    return;
                }
                setData(data.services);
            });
    }, []);

    return (<>
        <h1>Choose profile</h1>
        <form>
            <Service data={data}/>
            <button type="submit">Set Profile</button>
        </form>
    </>);
}

function Services() {
    return (<div id="flex-div">
        <Content/>
    </div>);
}

export default Services;