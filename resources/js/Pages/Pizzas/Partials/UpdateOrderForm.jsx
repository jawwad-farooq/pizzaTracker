import InputError from "@/Components/InputError";
import TextInput from "@/Components/TextInput";
import InputLabel from "@/Components/InputLabel";
import Dropdown from "@/Components/Dropdown";
import PrimaryButton from "@/Components/PrimaryButton";
import Select from "@/Components/Select";
import { useForm } from "@inertiajs/react";
import { Transition } from "@headlessui/react";
import axios from "axios";
import { route } from 'ziggy-js';

export default function UpdateOrderForm({ pizza, className =''}){
    
    const {data, setData, errors, processing, recentlySuccessful} = useForm({
        size: pizza.size,
        crust: pizza.crust,
        status: pizza.status
    });

    const submit = (e) => {
        console.log("submit called  !!", data.status);
        e.preventDefault();

        axios.patch(route('pizzas.update', pizza), { 
            status:data.status 
        }).then((res) => {
            console.log("res", res);
         }).catch((error) => {
            console.log("error", error);
         });
    };
    const updatePizza = () => {
        // Replace with your actual logic to update the pizza
        // For example, send a socket message to the server
        // with the updated pizza data
        socket.send(JSON.stringify({ action: 'updatePizza', pizza }));
    };

    const statusOption = [
        {'label':'Ordered', 'value':'Ordered'},
        {'label':'Prepping', 'value':'Prepping'},
        {'label':'Baking', 'value':'Baking'},
        {'label':'Checking', 'value':'Checking'},
        {'label':'Ready', 'value':'Ready'}
    ];
    return (
        <section className="">
            <header>
                <h2>Order Information</h2>
            </header>
            <div>
                <form onSubmit={submit} className="mt-6 space-y-6" >
                    <InputLabel value="size" />
                    <TextInput
                        id="size"
                        className="mt-1 block w-full"
                        value={data.size}
                        disabled
                    />

                    <InputLabel value="crust" />
                    <TextInput
                        id="crust"
                        className="mt-1 block w-full"
                        value={data.crust}
                        disabled
                    />

                    <InputLabel value="status" />
                    <Select 
                        options={statusOption}
                        value={data.status}
                        onChange={(e) => setData('status', e.target.value)}
                        // onChange={(e) => console.log(e.target.value)}
                    />

                    <InputError className="mt-2" />

                    <div className="flex items-center gap-4">
                        <PrimaryButton disabled={processing} onClick={updatePizza}>Save Changes</PrimaryButton>

                        <Transition
                            show={recentlySuccessful}
                            enter="transition ease-in-out"
                            enterFrom="opacity-0"
                            leave="transition ease-in-out"
                            leaveTo="opacity-0"
                        >
                            <p className="text-sm text-gray-600">Saved.</p>
                        </Transition>
                    </div>
                </form>
            </div>
            
        </section>
    );
} 