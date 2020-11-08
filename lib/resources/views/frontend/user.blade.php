@extends('frontend.master')
@section('title','Thông tin tài khoản')
@section('main')
<div id="wrap-inner">
    <div class="account">
        <h3>Thông tin tài khoản</h3>
        @include('errors.note')
        <form enctype="multipart/form-data">
            <div class="row" style="margin-bottom:40px">
                <div class="col-xl-12">
                    <div class="form-group">
                        <label for="name">Họ tên:</label>
                        <input required type="text" name="name" id="name" class="form-control" value="{{Auth::user()->name}}" disabled>
                    </div>
                    <div class="form-group">
                        <label for="username">Tên tài khoản:</label>
                        <input required type="text" name="username" id="username" class="form-control" value="{{Auth::user()->username}}" disabled>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="text" required name="email" id="email" class="form-control" value="{{Auth::user()->email}}" disabled>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone: </label>
                        <input required type="number" name="phone" id="phone" class="form-control" value="{{Auth::user()->phone}}" disabled>
                    </div>
                    <a href="{{asset('account/update')}}" title="Cập nhật tài khoản" class="btn btn-primary">Cập nhật tài khoản</a>
                    <a href="{{asset('/')}}" title="Quay về trang chủ" class="btn btn-danger">Quay về</a>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- end main -->

@stop