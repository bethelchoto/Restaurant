<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FoodStoreRequest extends FormRequest
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
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        if(request()->isMethod('post')) {
            return [
                'name' => 'required|string|max:258',
                'type_id' => 'required|exists:food_types,id',
                'price' => 'required',
                'location' => 'required',
                'stars'  => 'required',
                'people' => 'required',
                'selected_people'=>'required',
                'img' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:4048',
                'description' => 'required|string',
            ];
        } else {
            return [
                'name' => 'required|string|max:258',
                'type_id' => 'required|exists:food_types,id',
                'price' => 'required',
                'location' => 'required',
                'stars'  => 'required',
                'people' => 'required',
                'selected_people'=>'required',
                'img' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:4048',
                'description' => 'required|string',
            ];
        }

    }

    /**
     * Custom message for validation
     *
     * @return array
     */
    public function messages()
    {
        if(request()->isMethod('post')) {
            return [
                'name.required' => 'Name is required!',
                'description.required' => 'Descritpion is required!',
                'type_id.required' => 'Type Id is required',
                'price.required' => 'Price is required',
                'location.required' => 'Location is required',
                'stars.required'  => 'Stars is required',
                'people.required' => 'People is required',
                'selected_people.required'=>'Selected is people',
                'img.required' => 'Image is required',
                'description.required' => 'Description is required'
            ];
        } else {
            return [
                'name.required' => 'Name is required!',
                'description.required' => 'Descritpion is required!',
                'type_id.required' => 'Type Id is required',
                'price.required' => 'Price is required',
                'location.required' => 'Location is required',
                'stars.required'  => 'Stars is required',
                'people.required' => 'People is required',
                'selected_people.required'=>'Selected is people',
                'img.required' => 'Image is required',
                'description.required' => 'Description is required'

            ];   
        }
    }
}
