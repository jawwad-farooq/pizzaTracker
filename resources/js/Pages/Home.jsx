import React from "react";
import TextInput from "@/Components/TextInput";
import InputLabel from "@/Components/InputLabel";
import PrimaryButton from "@/Components/PrimaryButton";
import { useForm } from "@inertiajs/react";

export default function Home(){
    const {data, setData, processing} = useForm({
        orderNo: '',
    });
    const submit = (e) => {
        e.preventDefault();
        console.log("e",data.orderNo);
        var no = data.orderNo;
        window.location.href = `/order/${no}`;
    }
    return(
        <section>
            <div className="flex flex-wrap justify-center space-y-6 w-full h-screen bg-black">
                <form onSubmit={submit} className="text-center content-center w-1/2" >
                    <InputLabel value="Enter Order Number" className="w-full text-white" />
                    <TextInput 
                        id="orderNo"
                        className="mt-3 block w-full text-center"
                        onChange={(e)=>{setData('orderNo', e.target.value)}}
                    />
                    <PrimaryButton type="submit" className="mt-3 bg-green-600" >Check</PrimaryButton>
                </form>
            </div>
        </section>
    );
}