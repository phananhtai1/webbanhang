<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LoginRequest extends FormRequest
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
            'username' => 'required|min:6|max:30',
            'password' => 'required|min:6|max:30'
        ];
    }

    public function messages(){
        return [
            //
            'username.required'=>'Vui lòng nhập tên tài khoản',
            'username.min'=>'Tên tài khoản có ít nhất là 6 ký tự',
            'password.required'=>'Vui lòng nhập tên mật khẩu',
            'password.min'=>'Tên mật khẩu có ít nhất là 6 ký tự',

        ];
    }
}
