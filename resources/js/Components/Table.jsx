export default function Table({items, columns, primary, action}){
    return(
        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
                <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                    <tr>
                        <th scope="col" class="px-6 py-3">{primary}</th>
                        {columns.map((column)=>
                            <th key={column} scope="col" class="px-6 py-3">{column}</th>
                        )}
                        <th scope="col" class="px-6 py-3"></th>
                    </tr>
                </thead>
                <tbody>
                    {items.map((item)=>
                        <tr key={item.id} class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                {item.id}
                            </th>
                            <td class="px-6 py-4">
                                {item.size}
                            </td>
                            <td class="px-6 py-4">
                                {item.chef}
                            </td>
                            <td class="px-6 py-4">
                                {item.status}
                            </td>
                            <td class="px-6 py-4">
                                <a href={route(action, item.id)} class="font-medium text-blue-600 dark:text-blue-500 hover:underline">view details</a>
                            </td>
                        </tr>
                    )}
                </tbody>
            </table>
        </div>
    );
}