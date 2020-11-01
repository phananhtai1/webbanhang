<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Support\Facades\DB;


class OrderController extends Controller
{
    //
    public function getOrder(){
        $data['all_order'] = DB::table('tbl_order')
        ->join('tbl_shipping','tbl_order.order_shipping','=','tbl_shipping.shipping_id')
        ->join('tbl_users','tbl_shipping.shipping_user','=','tbl_users.id')
        ->select('tbl_order.*','tbl_shipping.shipping_name')
        ->orderBy('tbl_order.order_id','desc')->get();
        return view('backend.order.order',$data);
    }

    public function getViewOrder($id){
        $data['all_order'] = DB::table('tbl_order')
        ->join('tbl_shipping','tbl_order.order_shipping','=','tbl_shipping.shipping_id')
        ->join('tbl_users','tbl_shipping.shipping_user','=','tbl_users.id')
        ->where('tbl_order.order_id','=',$id)
        ->select('tbl_order.*','tbl_users.*','tbl_shipping.*')->first();

        $data['items'] = DB::table('tbl_order')
        ->join('tbl_order_details','tbl_order_details.order_id','=','tbl_order.order_id')
        ->join('tbl_products','tbl_products.prod_id','=','tbl_order_details.prod_id')
        ->where('tbl_order.order_id','=',$id)
        ->select('tbl_order_details.*','tbl_products.*')->get();

        return view('backend.order.view_order',$data);
    }

    public function getDeleteOrder($id){
        Order::destroy($id);
        return back();
    }
}
