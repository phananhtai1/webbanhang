<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Comment;
use Illuminate\Support\Facades\DB;

class CommentController extends Controller
{
    //
    public function getComment(){
        $data['all_comment'] = DB::table('tbl_comment')
        ->join('tbl_products','tbl_products.prod_id','=','tbl_comment.com_product')
        ->select('tbl_comment.*','tbl_products.prod_name')
        ->orderBy('tbl_comment.com_id','desc')->get();
        return view('backend.comment.comment', $data);
    }

    public function getViewComment($id){
        $data['comment'] = DB::table('tbl_comment')
        ->join('tbl_products','tbl_products.prod_id','=','tbl_comment.com_product')
        ->where('tbl_comment.com_id', $id)
        ->select('tbl_comment.*','tbl_products.prod_name', 'tbl_products.prod_img')->first();
        return view('backend.comment.view_comment', $data);
    }

    public function postViewComment(Request $request,$id){
        $comment = new Comment;
        $comment->com_email = $request->email;
        $comment->com_name = $request->name;
        $comment->com_content = $request->content;
        $comment->com_product = $request->com_product;
        $comment->save();
        return redirect('admin/comment')->with('success','Trả lời bình luận thành công');
    }

    public function getDeleteComment($id){
        Comment::destroy($id);
        return back()->with('success','Bạn đã xóa bình luận thành công');
    }
}
