@extends('frontend.master')
@section('title','Danh mục sản phẩm')
@section('main')
<link rel="stylesheet" href="css/category.css">
<div id="wrap-inner">
	<div class="products">
		<h3>{{$category->cat_name}}</h3>
		<div class="product-list row">
			@foreach($items as $item)
			<div class="product-item col-md-3 col-sm-6 col-xs-12">
				<a href="#"><img height="150" src="{{asset('lib/storage/app/avatarProduct/'.$item->prod_img)}}" class="img-thumbnail"></a>
				<p><a href="#">{{$item->prod_name}}</a></p>
				<p class="price">{{number_format($item->prod_price,0,',','.')}}đ</p>
				<div class="marsk">
					<a href="{{asset('detail/'.$item->prod_id)}}">Xem chi tiết</a>
				</div>
			</div>
			@endforeach
		</div>
	</div>

	<div class="row text-center">
		<div class="col-md-12 pt-3">
			{{$items->links()}}
		</div>
	</div>
</div>
<!-- end main -->
@stop