<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Http\Requests\AddCatRequest;
use App\Http\Requests\EditCatRequest;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    //
    public function getCategory(){
        $data['catlist'] = Category::all();
        return view('backend.category.category', $data);
    }

    public function postCategory(AddCatRequest $req){
        $category = new Category;
        $category->cat_name = $req->name;
        $category->cat_slug = Str::slug($req->name);
        $category->save();
        return back()->withInput()->with('success','Thêm danh mục thành công');
    }

    public function getEditCategory($id){
        $data['cat'] = Category::find($id);

        return view('backend.category.editcategory',$data);
    }

    public function postEditCategory(EditCatRequest $req, $id){
        $category = Category::find($id);
        $category->cat_name = $req->name;
        $category->cat_slug = Str::slug($req->name);
        $category->save();
        return redirect('admin/category')->withInput()->with('success','Cập nhật danh mục thành công');
    }

    public function getDeleteCategory($id){
        Category::destroy($id);
        return back()->with('success','Bạn đã xóa danh mục thành công');
    }
}
