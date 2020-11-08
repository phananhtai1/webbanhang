@extends('frontend.master')
@section('title','Chi tiết sản phẩm')
@section('main')
<link rel="stylesheet" href="css/details.css">

<div id="wrap-inner">
	<div id="product-info">
		<div class="clearfix"></div>
		<h3>{{$item->prod_name}}</h3>
		<div class="row">
			<div id="product-img" class="col-xs-12 col-sm-12 col-md-4 text-center">
				<img width="250" src="{{asset('lib/storage/app/avatarProduct/'.$item->prod_img)}}">
			</div>
			<div id="product-details" class="col-xs-12 col-sm-12 col-md-8">
				<p>Giá: <span class="price">{{number_format($item->prod_price,0,',','.')}} đ</span></p>
				<p>Bảo hành: {{$item->prod_warranty}}</p>
				<p>Phụ kiện: {{$item->prod_accessories}}</p>
				<p>Tình trạng:{{$item->prod_condition}}</p>
				<p>Khuyến mại: {{$item->prod_promotion}}</p>
				<p>Còn hàng: @if($item->prod_status == 1) Còn hàng @else Hết hàng @endif</p>
				<p class="add-cart text-center"><a href="{{asset('cart/add/'.$item->prod_id)}}" title="Đặt hàng" data-name = "{{$item->prod_name}}">Đặt hàng online</a></p>
			</div>
		</div>
	</div>
	<div id="product-detail">
		<h3>Chi tiết sản phẩm</h3>
		<p class="text-justify">{!!$item->prod_description!!}</p>
	</div>
	<div id="comment">
		<h3>Bình luận</h3>
		<div class="col-md-9 comment">
			<form method="post">
				<div class="form-group">
					<label for="email">Email:</label>
					<input required type="email" class="form-control" id="email" name="email">
				</div>
				<div class="form-group">
					<label for="name">Tên:</label>
					<input required type="text" class="form-control" id="name" name="name">
				</div>
				<div class="form-group">
					<label for="cm">Bình luận:</label>
					<textarea required rows="10" id="cm" class="form-control" name="content"></textarea>
				</div>
				<div class="form-group text-right">
					<button type="submit" class="btn btn-default">Gửi</button>
				</div>
				{{csrf_field()}}
			</form>
		</div>
	</div>
	<div id="comment-list">
		@foreach($comments as $comment)
		<ul>
			<li class="com-title">
				{{$comment->com_name}}
				<br>
				<span>{{date('d/m/Y', strtotime($comment->created_at))}}</span>
			</li>
			<li class="com-details">
				{{$comment->com_content}}
			</li>
		</ul>
		@endforeach
	</div>
	<div class="modal fade" id="modal-add-cart">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Thêm giỏ hàng thành công</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body" id="alert-pro-name"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-close" data-dismiss="modal">Close</button>
					<a href="{{asset('cart/show')}}" title="Xem giỏ hàng" class="btn btn-add-cart">Xem giỏ hàng</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end main -->
@stop