import AuthenticatedLayout from "../../Layouts/AuthenticatedLayout";
import {Head} from '@inertiajs/react';
import UpdateOrderForm from "./Partials/UpdateOrderForm"


export default function Edit({auth , pizza}) {
    return (
        <AuthenticatedLayout
            user={auth.user}
            header={<h2 className="font-semibold text-xl text-gray-800 leading-tight">Orders #{pizza.id}</h2>}
        >

            <Head title={"Order: "+ pizza.id} />

            <div className="py-12">
                <div className="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
                    <div className="p-4 bg-white overflow-hidden shadow sm:rounded-lg">
                        <UpdateOrderForm pizza={pizza} className="max-w-xl" ></UpdateOrderForm>
                    </div>
                </div>
            </div>

        </AuthenticatedLayout>
    );
}