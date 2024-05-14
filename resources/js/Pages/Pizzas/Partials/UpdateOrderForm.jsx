import InputError from "@/Components/InputError";
import TextInput from "@/Components/TextInput";
import InputLabel from "@/Components/InputLabel";
import Dropdown from "@/Components/Dropdown";
import PrimaryButton from "@/Components/PrimaryButton";
import Select from "@/Components/Select";



export default function UpdateOrderForm({ pizza, className =''}){
    const statusOption = [
        {'label':'Ordered', 'value':'Ordered'},
        {'label':'Prepping', 'value':'Prepping'},
        {'label':'Baking', 'value':'Baking'},
        {'label':'Checking', 'value':'Checking'},
        {'label':'Ready', 'value':'Ready'}
    ];
    return (
        <section className>
            <header>
                <h2>Order Information</h2>
            </header>
            <div>
                <form className="mt-6 space-y-6" >
                    <InputLabel value="size" />
                    <TextInput
                        id="size"
                        className="mt-1 block w-full"
                        value={pizza.size}
                        disabled
                    />

                    <InputLabel value="crust" />
                    <TextInput
                        id="crust"
                        className="mt-1 block w-full"
                        value={pizza.crust}
                        disabled
                    />

                    <InputLabel value="status" />
                    <Select 
                        options={statusOption}
                        value={pizza.status}/>

                    <InputError className="mt-2" message={"something went wrong"}/>

                </form>
            </div>
            <div>
                <PrimaryButton>Save Changes</PrimaryButton>
            </div>
            
        </section>
    );
} 