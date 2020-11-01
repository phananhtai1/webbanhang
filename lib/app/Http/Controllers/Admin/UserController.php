<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use  App\Http\Requests\AddUserRequest;
use  App\Http\Requests\EditUserRequest;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    //

    public function getUser(){
        $data['users'] = User::all();
        return view('backend.user.user', $data);
    }

    public function getAddUser(){
        return view('backend.user.adduser');
    }

    public function postAddUser(AddUserRequest $request){
        $user['name'] = $request->name;
        $user['username'] = $request->username;
        $user['email'] = $request->email;
        $user['phone'] = $request->phone;
        $user['password'] = bcrypt($request->create_password);
        $user['level'] = $request->level;
        DB::table('tbl_users')->insert($user);
        return redirect('admin/user')->with('success','Thêm thành viên thành công');

    }

    public function getEditUser($id){
        $data['user'] = User::find($id);
        return view('backend.user.edituser', $data);
    }

    public function postEditUser(EditUserRequest $request,$id){
        $users = new User;
        $user = array();
        $user['name'] = $request->name;
        $user['email'] = $request->email;
        $user['phone'] = $request->phone;
        $user['level'] = $request->level;
        if($request->changePassword == "on"){
            $user['password'] = bcrypt($request->create_password);
        }
        $users::where('id',$id)->update($user);
        return redirect('admin/user')->with('success',"Bạn đã sửa thông tin thành công");
    }

    public function getDeleteUser($id){
        User::destroy($id);
        return back();
    }
}
