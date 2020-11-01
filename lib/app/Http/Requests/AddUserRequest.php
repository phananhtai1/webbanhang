<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddUserRequest extends FormRequest
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
            'username' => '|min:6|max:20|unique:tbl_users,username',
            'email' => 'email|unique:tbl_users,email',
            'create_password' => 'min:6|max:20',
            'repeat_password' => 'same:create_password'
        ];
    }

    public function messages(){
        return [
            //
            'name.required' => 'Vui lòng nhập tên người dùng',
            'username.unique'=>'Tên tài khoản đã bị trùng!',
            'email.unique' => 'Email đã bị trùng!',
            'email.email' => 'Vui lòng nhập đúng định dạng email',
            'repeat_password.same' => 'Nhập lại mật khẩu không trùng khớp',
            'username.min' => 'Tên tài khoản ít nhất 6 kí tự',
            'create_password' => 'Mật khẩu ít nhất 6 kí tự',
        ];
    }
}
