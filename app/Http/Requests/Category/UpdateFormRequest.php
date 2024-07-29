<?php

namespace App\Http\Requests\Category;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name' => [
                'required',
                'unique:categories,name,' . $this->id, // Ensure name is unique except for the current category
            ],
            'parent_id' => [
                'required',
                'integer',
                'not_in:' . $this->id, // Ensure the parent_id is not the current category's id
            ],
            'status' => 'required|boolean',
        ];
    }
}
