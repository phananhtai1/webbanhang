<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EditUserRequest extends FormRequest
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
            'name' => 'required',
            'email' => 'email|unique:tbl_users,email,'.$this->segment(4).',id',
            'create_password' => 'min:6|max:20',
            'repeat_password' => 'same:create_password'
        ];
    }

    public function messages(){
        return [
            //
            'name.required' => 'Vui lòng nhập tên người dùng',
            'email.unique' => 'Email đã bị trùng!',
            'email.email' => 'Vui lòng nhập đúng định dạng email',
            'repeat_password.same' => 'Nhập lại mật khẩu không trùng khớp',
            'create_password' => 'Mật khẩu ít nhất 6 kí tự',
        ];
    }
}
