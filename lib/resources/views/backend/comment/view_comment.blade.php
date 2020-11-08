@extends('backend.master')
@section('title','Xem bình luận')
@section('main')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Bình luận</h1>
        </div>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-xs-12 col-md-12 col-lg-12">

            <div class="panel panel-primary">
                <div class="panel-heading">Chi tiết bình luận</div>
                <div class="panel-body">
                    <div class="row" style="margin-bottom:40px">
                        <div class="col-xs-7">
                            <div class="form-group">
                                <label>Ảnh sản phẩm</label>
                                <img id="avatar" class="thumbnail" width="300px" src="{{asset('lib/storage/app/avatarProduct/'.$comment->prod_img)}}">
                            </div>
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input type="text" class="form-control" value="{{$comment->prod_name}}" disabled>
                            </div>
                            <div class="form-group">
                                <label>Tên người bình luận</label>
                                <input type="text" class="form-control" value="{{$comment->com_name}}" disabled>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" class="form-control" value="{{$comment->com_email}}" disabled>
                            </div>
                            <div class="form-group">
                                <label>Nội dung bình luận</label>
                                <textarea required rows="10" id="cm" class="form-control" name="content" disabled>{{$comment->com_content}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Ngày bình luận</label>
                                <input type="text" class="form-control" value="{{$comment->created_at}}" disabled>
                            </div>
                        </div>
                        <div class="col-xs-5">
                            <h3 class="text-center">Thông tin trả lời bình luận</h3>
                            <form action="{{asset('admin/comment/view/'.$comment->com_id)}}" method="post">
                                <div class="form-group">
                                    <label>Người trả lời bình luận</label>
                                    <input type="text" disabled class="form-control" name="name" value="Admin">
                                </div>
                                <div class="form-group">
                                    <label>Nội dung trả lời bình luận</label>
                                    <textarea required name="content" class="form-control" id="" cols="30" rows="10" placeholder="Nội dung trả lời bình luận..."></textarea>
                                </div>
                                <input type="hidden" name="email" value="{{Auth::user()->email}}">
                                <input type="hidden" name="com_product" value="{{$comment->com_product}}">
                                <input type="submit" name="submit" value="Trả lời" title="Trả lời bình luận" class="btn btn-primary">
                                <a href="{{asset('admin/comment')}}" title="Quay lại" onclick="return confirm('Bạn chắc chắn muốn quay lại!!')" class="btn btn-danger">Quay về</a>
                                {{csrf_field()}}
                            </form>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <!--/.row-->
</div>
<!--/.main-->
@stop