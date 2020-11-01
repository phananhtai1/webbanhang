<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddCatRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            'name' => 'required|unique:tbl_categories,cat_name'
        ];
    }

    public function messages(){
        return [
            //
            'name.unique'=>'Tên danh mục đã bị trùng!',
            'name.required' => 'Vui lòng nhập tên danh mục'
        ];
    }
}
