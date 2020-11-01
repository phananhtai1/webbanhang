<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\LoginRequest;

class LoginController extends Controller
{
    //
    public function getLogin(){
        return view('backend.login');
    }

    public function postLogin(LoginRequest $req){
        $arr = ['username' => $req->username, 'password' => $req->password];
        if(Auth::attempt($arr)){
            return redirect('admin');
        }else{
            return back()->withInput()->with('error','Tài khoản hoặc mật khẩu không trùng khớp');
        }
    }
}
