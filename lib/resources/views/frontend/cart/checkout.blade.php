@extends('frontend.master')
@section('title','Thông tin mua hàng')
@section('main')
<link rel="stylesheet" href="css/cart.css">
<div id="wrap-inner">
    <div id="xac-nhan">
        <h3 class="text-info my-3">Nhập thông tin khách hàng</h3>
        <form method="post" action="{{asset('cart/show-complete')}}">
            <div class="form-group">
                <label for="name" class="font-weight-bold">Họ và tên:</label>
                <input required autofocus type="text" class="form-control" id="name" name="name" placeholder="Nhập tên người nhận...">
            </div>
            <div class="form-group">
                <label for="email" class="font-weight-bold">Email:</label>
                <input required type="email" class="form-control" id="email" name="email" placeholder="Nhập email...">
            </div>
            <div class="form-group">
                <label for="phone" class="font-weight-bold">Số điện thoại:</label>
                <input required type="number" class="form-control" id="phone" name="phone" placeholder="Nhập SĐT người nhận...">
            </div>
            <div class="form-group">
                <label for="add" class="font-weight-bold">Địa chỉ:</label>
                <input required type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ người nhận...">
            </div>
            <div class="form-group text-right">
                <button type="submit" class="btn btn-default order-continue">Thực hiện đơn hàng</button>
            </div>
            {{csrf_field()}}
        </form>
        <h3 class="text-info my-3">Sản phẩm muốn mua</h3>
        <table class="table table-bordered .table-responsive text-center">
            <tr class="active font-weight-bold">
                <td width="11.111%">Ảnh mô tả</td>
                <td width="22.222%">Tên sản phẩm</td>
                <td width="22.222%">Số lượng</td>
                <td width="16.6665%">Đơn giá</td>
                <td width="16.6665%">Thành tiền</td>
            </tr>
            @foreach($items as $item)
            <tr>
                <td><img class="img-responsive" height="150" src="{{asset('lib/storage/app/avatarProduct/'.$item->options->img)}}"></td>
                <td>{{$item->name}}</td>
                <td>
                    <div class="form-group">
                        <input disabled class="form-control" type="number" value="{{$item->qty}}" onchange="updateCart(this.value, '{{$item->rowId}}')">
                    </div>
                </td>
                <td><span class="price">{{number_format($item->price,0,'.','.')}}đ</span></td>
                <td><span class="price">{{number_format($item->price*$item->qty,0,'.','.')}}đ</span></td>
            </tr>
            @endforeach
        </table>
        <div class="row" id="total-price">
            <div class="col-md-6 col-sm-12 col-xs-12">
                Tổng thanh toán: <span class="total-price">{{$total}}đ</span>
            </div>
        </div>
    </div>
</div>

@stop