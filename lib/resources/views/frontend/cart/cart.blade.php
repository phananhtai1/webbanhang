@extends('frontend.master')
@section('title','Giỏ hàng')
@section('main')
<link rel="stylesheet" href="css/cart.css">
<div id="wrap-inner">
	<div id="list-cart">
		<h3>Giỏ hàng</h3>
		@if(Cart::count()>= 1)
		<form>
			<table class="table table-bordered .table-responsive text-center">
				<tr class="active font-weight-bold">
					<td width="11.111%">Ảnh mô tả</td>
					<td width="22.222%">Tên sản phẩm</td>
					<td width="22.222%">Số lượng</td>
					<td width="16.6665%">Đơn giá</td>
					<td width="16.6665%">Thành tiền</td>
					<td width="11.112%">Xóa</td>
				</tr>
				@foreach($items as $item)
				<tr>
					<td><a href="{{asset('detail/'.$item->id)}}" title="Ảnh sản phẩm"><img class="img-responsive" height="150" src="{{asset('lib/storage/app/avatarProduct/'.$item->options->img)}}"></a></td>
					<td><a href="{{asset('detail/'.$item->id)}}" title="Tên sản phẩm">{{$item->name}}</a></td>
					<td>
						<div class="form-group">
							<input class="form-control" type="number"
							value="{{$item->qty}}" onchange="updateCart(this.value, '{{$item->rowId}}')">
						</div>
					</td>
					<td><span class="price">{{number_format($item->price,0,'.','.')}}đ</span></td>
					<td><span class="price">{{number_format($item->price*$item->qty,0,'.','.')}}đ</span></td>
					<td><a href="{{asset('cart/delete/'.$item->rowId)}}" title="Xóa sản phẩm" onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này???')">Xóa</a></td>
				</tr>
				@endforeach
			</table>
			<div class="row" id="total-price">
				<div class="col-md-6 col-sm-12 col-xs-12">
					Tổng thanh toán: <span class="total-price">{{$total}}đ</span>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12 text-right">
					<a href="{{asset('/')}}" title="Mua tiếp" class="my-btn btn">Mua tiếp</a>
					<a href="{{asset('cart/delete/all')}}" title="Xóa giỏ hàng" onclick="return confirm('Bạn có chắc chắn muốn xóa hết sản phẩm trong giỏ???')"class="my-btn btn">Xóa giỏ hàng</a>
					<?php
					$user_id = session()->get('user_id');
					if ($user_id == Null) {
					?>
						<a href="{{asset('login-checkout')}}" title="Mua hàng" class="my-btn btn">Mua hàng</a>
					<?php
					} else {
					?>
						<a href="{{asset('cart/checkout')}}" title="Mua hàng" class="my-btn btn">Mua hàng</a>
					<?php
					}
					?>
				</div>
			</div>
		</form>
	</div>
	@else
	Giỏ hàng rỗng
	@endif
</div>
<script>
	function updateCart(qty, rowId){
		$.get(
			"{{asset('cart/update')}}",
			{qty:qty, rowId:rowId},
			function(){
				location.reload();
			}
		);
	}
</script>

<!-- end main -->
@stop