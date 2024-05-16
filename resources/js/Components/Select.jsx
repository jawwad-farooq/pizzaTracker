import React from 'react';

function Select({ options, value, onChange }) {
    return (
        <>
            <select
                defaultValue={value}
                onChange={onChange}
                className="mt-1 block w-full"
            >
                <option value="" selected disabled>Select an option</option>
                {options.map((option) => (
                    <option value={option}>
                        {option}
                    </option>
                ))}
            </select>
        </>
    );
}

export default Select;
