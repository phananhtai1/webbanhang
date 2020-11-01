<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use  App\Http\Requests\AddProductRequest;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    //
    public function getProduct(){
        $data['productlist'] = DB::table('tbl_products')->join('tbl_categories', 'tbl_products.prod_cat',
        '=','tbl_categories.cat_id')->get();
        return view('backend.product.product', $data);
    }

    public function getAddProduct(){
        $data['catlist'] = Category::all();
        return view('backend.product.addproduct', $data);
    }

    public function postAddProduct(AddProductRequest $req){
        $filename = $req->img->getClientOriginalName();
        $product = new Product;
        $product->prod_name = $req->name;
        $product->prod_slug = Str::slug ($req->name);
        $product->prod_img = $filename;
        $product->prod_accessories = $req->accessories;
        $product->prod_price = $req->price;
        $product->prod_warranty = $req->warranty;
        $product->prod_promotion = $req->promotion;
        $product->prod_condition = $req->condition;
        $product->prod_status = $req->status;
        $product->prod_description = $req->description;
        $product->prod_cat = $req->cate;
        $product->prod_featured = $req->featured;
        $product->save();
        $req->img->storeAs('avatarProduct', $filename);
        return back()->withInput()->with('success','Thêm sản phẩm mới thành công');


    }

    public function getEditProduct($id){
        $data['product'] = Product::find($id);
        $data['catlist'] = Category::All();
        return view('backend.product.editproduct',$data);
    }

    public function postEditProduct(Request $req, $id){
        $product = new Product;
        $arr['prod_name'] = $req->name; 
        $arr['prod_slug'] = Str::slug($req->name);
        $arr['prod_price'] = $req->price;
        $arr['prod_accessories'] = $req->accessories; 
        $arr['prod_warranty'] = $req->warranty;
        $arr['prod_promotion'] = $req->promotion; 
        $arr['prod_condition'] = $req->condition; 
        $arr['prod_status'] = $req->status;  
        $arr['prod_description'] = $req->description;  
        $arr['prod_cat'] = $req->cate;
        $arr['prod_featured'] = $req->featured;
        if($req->hasFile('img')){
            $img =  $req->img->getClientOriginalName();
            $arr['prod_img'] = $img;
            $req->img->storeAs('avatarProduct', $img);
        }
        $product::where('prod_id',$id)->update($arr);
        return redirect('admin/product')->withInput()->with('success','Sửa sản phẩm thành công');
    }

    public function getDeleteProduct($id){
        Product::destroy($id);
        return back();
    }


}
