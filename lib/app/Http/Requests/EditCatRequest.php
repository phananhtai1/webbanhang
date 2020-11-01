<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EditCatRequest extends FormRequest
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
            //segment(4) (/admin/category/edit/6) thằng 6 là segment(4) 
            'name' => 'unique:tbl_categories,cat_name,'.$this->segment(4).',cat_id'
        ];
    }

    public function messages(){
        return [
            //
            'name.unique'=>'Tên danh mục đã bị trùng!'
        ];
    }
}
