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
                    <option key={option.value} value={option.value}>
                        {option.label}
                    </option>
                ))}
            </select>
        </>
    );
}

export default Select;
