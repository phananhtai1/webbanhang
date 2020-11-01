<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\Product;
use App\Models\Order;
use App\Models\Category;
use App\Models\User;

class HomeController extends Controller
{
    //
    public function getHome(){
        $data['countProducts'] = Product::count();
        $data['countCategories'] = Category::count();
        $data['countOrder'] = Order::count();
        $data['countUsers'] = User::count();
        return view('backend.index',$data);
    }

    public function getLogout(){
        Auth::logout();
        return redirect('login');
    }
}
