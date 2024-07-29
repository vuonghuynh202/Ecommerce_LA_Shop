<?php

namespace App\Http\Requests\Product;

use Illuminate\Foundation\Http\FormRequest;

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
            'name' => 'required|max:255|unique:products,name,' . $this->id,
            'price' => 'required|numeric',
            'discount' => 'nullable|numeric|min:0|max:100',
            'category_id' => 'required|exists:categories,id',
            'colors' => 'required|array',
            'sizes' => 'required|array',
            'feature_img_path' => 'nullable|mimes:jpeg,png,jpg,webp|max:2048',
            'image_paths' => 'nullable|array',
            'image_paths.*' => 'nullable|mimes:jpeg,png,jpg,webp|max:2048',
            'description' => 'required',
        ];
    }
}
