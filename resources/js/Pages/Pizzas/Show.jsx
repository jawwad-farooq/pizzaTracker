import { router} from "@inertiajs/react";
import { useEffect } from "react";



export default function show({ pizza }){
    console.log(pizza);
    useEffect(()=> {
        const interval = setInterval(() => {
            router.reload({only: ['pizza']});
        }, 3000);
        return()=>{
            clearInterval(interval);
        };
    }, []);

    return(
        <div className="w-full text-center">
            <h1 className="text-xl text-gray-900">Order # {pizza.id}</h1>
            <h1 className="text-blue-600">Order Status {pizza.status}</h1>
            <div className="text-green-600">
                <p>order update by {pizza.chef} <span>{pizza.last_updated}</span></p>
            </div>
        </div>
    );
}