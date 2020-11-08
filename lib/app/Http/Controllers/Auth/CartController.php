<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;


class CartController extends Controller
{

    public function getAddCart($id){
        $product = Product::find($id);
        Cart::add(['id'=>$id,'name'=> $product->prod_name, 'qty' => 1, 
        'price' => $product->prod_price, 'options' => ['img' => $product->prod_img]]);
        $result = array(
            'ok' => "ok",
            'countCart' => Cart::count(),
        );
        echo json_encode($result);
    }

    public function getShowCart(){
        Cart::setGlobalTax(0);
        $data['total'] = Cart::total();
        $data['items'] = Cart::content();
        if(Auth::check()){
            $data['user'] = Auth::user();
        }
        return view('frontend.cart.cart',$data);
    }

    public function getDeleteCart($id){
        if($id == 'all'){
            Cart::destroy();
        }else{
            Cart::remove($id);
        }
        return back();
    }

    public function getUpdateCart(Request $request){
        Cart::update($request->rowId, $request->qty);
    }
    public function postComplete(Request $request){

        //Insert shipping
        $shipping = array();
        $shipping['shipping_name'] = $request->name;
        $shipping['shipping_user'] = session()->get('user_id');
        $shipping['shipping_email'] = $request->email;
        $shipping['shipping_phone'] = $request->phone;
        $shipping['shipping_address'] = $request->address;
        $shipping_id = DB::table('tbl_shipping')->insertGetId($shipping);

        //Insert Order
        $order = array();
        $order['order_shipping'] = $shipping_id;
        $order['order_total'] = Cart::total();
        $order['order_status'] = "Đang xử lý";
        $order_id = DB::table('tbl_order')->insertGetId($order);

        //Insert Order details
        $content = Cart::content();
        $order_details= array();
        foreach ($content as $item){
            $order_details['order_id'] = $order_id;
            $order_details['prod_id'] = $item->id;
            $order_details['quantity'] = $item->qty;
            DB::table('tbl_order_details')->insert($order_details);
        }

        $data['info'] = $request->all();
        $data['cart'] = Cart::content();
        $data['total'] = Cart::total();
        $email = $request->email;
        Mail::send('frontend.email', $data, function($message) use($email){
            $message->from('tai.phananh2101@gmail.com', 'Anh Tài');
            $message->to($email,session()->get('user_name'));
            $message->subject('Xác nhận hóa đơn mua hàng');
        });
        Cart::destroy();
        return redirect('complete');
    }

    public function getComplete(){
        return view('frontend.complete');
    }

    public function getCheckout(){
        Cart::setGlobalTax(0);
        $data['total'] = Cart::total();
        $data['items'] = Cart::content();
        return view('frontend.cart.checkout',$data);
    }
}

