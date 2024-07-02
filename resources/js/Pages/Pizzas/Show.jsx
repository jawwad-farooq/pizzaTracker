import { router} from "@inertiajs/react";
import { useEffect } from "react";

const style = {
    header: {
        height: "100vh",
        background: "black",
        innerWidth: "100%",
        textAlign: "center",
        alignContent: "center"
    }
};

export default function show({ pizza, error }){
    useEffect(()=> {
        const interval = setInterval(() => {
            router.reload({only: ['pizza']});
        }, 3000);
        return()=>{
            clearInterval(interval);
        }
    }, []);

    if (error) {
        return(
            <div style={style.header}>
                <h2 className="text-red-600">{error}</h2>
            </div>
        );
    }
    else {
        return(
            <div style={style.header}>
                <h1 className="text-xl text-green-600">Order # {pizza.id}</h1>
                <h2 className="text-blue-600">Order Status {pizza.status}</h2>
                <div className="text-green-600">
                    <p>order update by {pizza.chef} <span>{pizza.last_updated}</span></p>
                </div>
            </div>
        );
    }
}