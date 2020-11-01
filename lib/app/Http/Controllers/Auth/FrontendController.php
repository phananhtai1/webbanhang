<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Comment;
use App\Http\Requests\AddUserRequest;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\LoginRequest;

class FrontendController extends Controller {

    public function getHome() {
        $data['featured'] = Product::where('prod_featured', 1)->orderBy('prod_id', 'desc')->take(8)->get();
        $data['news'] = Product::orderBy('prod_id', 'desc')->take(8)->get();
        return view('frontend.home', $data);
    }

    public function getDetail($id) {
        $data['item'] = Product::find($id);
        $data['comments'] = Comment::where('com_product', $id)->get();
        return view('frontend.details', $data);
    }

    public function getCategory($id) {
        $data['category'] = Category::find($id);
        $data['items'] = Product::where('prod_cat', $id)->orderBy('prod_id', 'desc')->paginate(8);
        return view('frontend.category', $data);
    }

    public function postComment(Request $request, $id) {
        $comment = new Comment;
        $comment->com_email = $request->email;
        $comment->com_name = $request->name;
        $comment->com_content = $request->content;
        $comment->com_product = $id;
        $comment->save();
        return back();
    }

    public function getSearch(Request $request) {
        $result = $request->result;
        $data['keywords'] = $result;
        $result = str_replace(' ', '%', $result);
        $data['items'] = Product::where('prod_name', 'like', '%' . $result . '%')->paginate(8);
        return view('frontend.search', $data);
    }

    public function getLoginCheckout() {
        return view('frontend.login_checkout');
    }

    public function postLoginCheckout(LoginRequest $request) {
        $arr = ['username' => $request->username, 'password' => $request->password];
        $username = $request->username;
        $request = DB::table('tbl_users')->where('username', $username)->first();
        if (Auth::attempt($arr)) {
            session()->put('user_id', $request->id);
            session()->put('user_name', $request->name);

            $url_prev = session()->get('url_prev');
            return redirect($url_prev);
        } else {
            return back()->withInput()->with('error', 'Tài khoản hoặc mật khẩu không tồn tại');
        }
    }

    public function getRegister() {
        return view('frontend.register');
    }

    public function postRegister(AddUserRequest $request) {
        $data = array();
        $data['name'] = $request->name;
        $data['username'] = $request->username;
        $data['email'] = $request->email;
        $data['phone'] = $request->phone;
        $data['password'] = bcrypt($request->create_password);
        $data['level'] = 0;

        $user_id = DB::table('tbl_users')->insertGetId($data);
        session()->put('user_id', $user_id);
        session()->put('user_name', $request->name);
        $url_prev = session()->get('url_prev');
        return redirect($url_prev);
    }

    public function getLogoutCheckout() {
        Auth::logout();
        session()->flush();
        return redirect('/');
    }
}
