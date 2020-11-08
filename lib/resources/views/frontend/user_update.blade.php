@extends('frontend.master')
@section('title','Thay đổi thông tin tài khoản')
@section('main')
<div id="wrap-inner">
    <div class="account">
        <h3>Thông tin tài khoản</h3>
        @include('errors.note')
        <form method="post" enctype="multipart/form-data" action="{{asset('account/update')}}">
            <div class="row" style="margin-bottom:40px">
                <div class="col-xl-8">
                    <div class="form-group">
                        <label for="name">Họ tên:</label>
                        <input required type="text" name="name" id="name" class="form-control" value="{{Auth::user()->name}}">
                    </div>
                    <div class="form-group">
                        <label for="username">Tên tài khoản:</label>
                        <input required type="text" name="username" id="username" class="form-control" value="{{Auth::user()->username}}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="text" required name="email" id="email" class="form-control" value="{{Auth::user()->email}}">
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone: </label>
                        <input required type="number" name="phone" id="phone" class="form-control" value="{{Auth::user()->phone}}">
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="changePassword" onclick="changePassword(this)" id="changePassword">
                        <label for="changePassword">Đổi mật khẩu</label>
                    </div>
                    <div class="form-group">
                        <label for="create_pw">Mật khẩu mới:</label>
                        <input required type="password" disabled="" name="create_password" id="create_pw" class="form-control password" placeholder="Nhập mật khẩu mới...">
                    </div>
                    <div class="form-group">
                        <label for="repeat_pw">Nhập lại mật khẩu: </label>
                        <input required type="password" disabled="" name="repeat_password" id="repeat_pw" class="form-control password" placeholder="Nhập lại mật khẩu...">
                    </div>
                    <input type="submit" name="submit" value="Cập nhật" title="Cập nhật thành viên" class="btn btn-primary">
                    <a href="{{asset('account')}}" title="Hủy" onclick="return confirm('Bạn chắc chắn muốn hủy cập nhật tài khoản')" class="btn btn-danger">Quay về</a>
                </div>
            </div>
            {{csrf_field()}}
        </form>

    </div>
</div>
<!-- end main -->

@stop