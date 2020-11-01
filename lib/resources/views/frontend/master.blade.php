<!DOCTYPE html>
<html>

<head>
	<base href="{{asset('public/layout/frontend')}}/">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Vietpro Shop - @yield('title')</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/home.css">
</head>

<body>
	<!-- header -->
	<header id="header">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-right">
					<?php
					$user_id = session()->get('user_id');
					if ($user_id == Null) {
					?>
						<a class="register" title="đăng ký" href="{{asset('register')}}">Đăng ký</a> |
						<a class="login" title="đăng nhập" href="{{asset('login-checkout')}}">Đăng nhập</a>
					<?php
					} else {
					?>
						<span title="Tên người dùng" class="customer-info"><?php echo session()->get('user_name'); ?></span> |
						<a class="logout login" title="đăng xuất" href="{{asset('logout-checkout')}}">Đăng xuất</a>
					<?php
					}
					?>
				</div>
			</div>
			<div class="row">
				<div id="logo" class="col-md-3 col-sm-12 col-xs-12">
					<h1>
						<a href="{{asset('/')}}" title="trang chủ"><img src="img/home/logo.png"></a>
						<nav><a id="pull" class="btn btn-danger" href="#">
								<i class="fa fa-bars"></i>
							</a></nav>
					</h1>
				</div>
				<div id="search" class="col-md-7 col-sm-12 col-xs-12">
					<form method="get" action="{{asset('search/')}}">
						<input type="text" class="form-control" name="result" placeholder="Nhập từ khóa ...">
						<input type="submit" class="btn btn-default" name="submit" value="search">
					</form>
				</div>
				<div id="cart" class="col-md-2 col-sm-12 col-xs-12">
					<a class="display" href="{{asset('cart/show')}}" title="giỏ hàng">Giỏ hàng</a>
					<a id="count-cart" href="{{asset('cart/show')}}">{{Cart::count()}}</a>
				</div>
			</div>
		</div>
	</header><!-- /header -->
	<!-- endheader -->

	<!-- main -->
	<section id="body">
		<div class="container">
			<div class="row">
				<div id="sidebar" class="col-md-3">
					<nav id="menu">
						<ul>
							<li class="menu-item">danh mục sản phẩm</li>
							@foreach($categories as $cat)
							<li class="menu-item"><a href="{{asset('category/'.$cat->cat_id.'/'.$cat->cat_slug.'.html')}}" title="">{{$cat->cat_name}}</a></li>
							@endforeach
						</ul>
						<!-- <a href="#" id="pull">Danh mục</a> -->
					</nav>

					<div id="banner-l" class="text-center">
						<div class="banner-l-item">
							<a href="javascript:;"><img src="img/home/banner-l-8.png" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="javascript:;"><img src="img/home/banner-l-9.png" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="javascript:;"><img src="img/home/banner-l-10.png" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="javascript:;"><img src="img/home/banner-l-11.png" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="javascript:;"><img src="img/home/banner-l-12.png" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="javascript:;"><img src="img/home/banner-l-13.png" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="javascript:;"><img src="img/home/banner-l-14.png" alt="" class="img-thumbnail"></a>
						</div>
					</div>
				</div>

				<div id="main" class="col-md-9">
					<!-- main -->
					<!-- phan slide la cac hieu ung chuyen dong su dung jquey -->
					<div id="slider">
						<div id="demo" class="carousel slide" data-ride="carousel">

							<!-- Indicators -->
							<ul class="carousel-indicators">
								<li data-target="#demo" data-slide-to="0" class="active"></li>
								<li data-target="#demo" data-slide-to="1"></li>
								<li data-target="#demo" data-slide-to="2"></li>
							</ul>

							<!-- The slideshow -->
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img width="100%" src="img/home/slide-4.png" alt="Los Angeles">
								</div>
								<div class="carousel-item">
									<img width="100%" src="img/home/slide-5.png" alt="Chicago">
								</div>
								<div class="carousel-item">
									<img width="100%" src="img/home/slide-7.png" alt="New York">
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="carousel-control-prev" href="#demo" data-slide="prev">
								<span class="carousel-control-prev-icon"></span>
							</a>
							<a class="carousel-control-next" href="#demo" data-slide="next">
								<span class="carousel-control-next-icon"></span>
							</a>
						</div>
					</div>

					<div id="banner-t" class="text-center">
						<div class="row">
							<div class="banner-t-item col-md-6 col-sm-12 col-xs-12">
								<a href="javascript:;"><img src="img/home/banner-t-3.png" alt="" class="img-thumbnail"></a>
							</div>
							<div class="banner-t-item col-md-6 col-sm-12 col-xs-12">
								<a href="javascript:;"><img src="img/home/banner-t-4.png" alt="" class="img-thumbnail"></a>
							</div>
						</div>
					</div>
					@yield('main')
				</div>
			</div>
		</div>
	</section>
	<!-- endmain -->

	<!-- footer -->
	<footer id="footer">
		<div id="footer-t">
			<div class="container">
				<div class="row">
					<div id="logo-f" class="col-md-3 col-sm-12 col-xs-12 text-center">
						<a href="#"><img src="img/home/logo.png"></a>
					</div>
					<div id="about" class="col-md-3 col-sm-12 col-xs-12">
						<h3>About us</h3>
						<p class="text-justify">Cửa hàng Vietpro được thành lập hơn 10 năm với sự uy tín, đảm bảo, chất lượng được ưu tiên hàng đầu. Luôn mang đến những sản phẩm điện thoại tốt nhất hiện nay với giá đầy ưu đãi chất lương. Phương châm chúng tôi khách hàng là trên hết, tiếp thu ý kiến của khách hàng và nâng cao giá trị thương hiệu của cửa hàng.</p>
					</div>
					<div id="hotline" class="col-md-3 col-sm-12 col-xs-12">
						<h3>Hotline</h3>
						<p>Phone Sale: (+84) 0348 668 653</p>
						<p>Email: phananhtai868@gmail.com</p>
					</div>
					<div id="contact" class="col-md-3 col-sm-12 col-xs-12">
						<h3>Contact Us</h3>
						<p>Address 1: 785/8 - Nguyễn Kiệm - Quận Gò Vấp - HCM</p>
						<p>Address 2: 371 - Nguyễn Thái Sơn - Hà Nội</p>
					</div>
				</div>
			</div>
			<div id="footer-b">
				<div class="container">
					<div class="row">
						<div id="footer-b-l" class="col-md-6 col-sm-12 col-xs-12 text-center">
							<p>Cửa hàng điện thoại Vietpro - www.vietpro.edu.vn</p>
						</div>
						<div id="footer-b-r" class="col-md-6 col-sm-12 col-xs-12 text-center">
							<p>© 2005 Vietpro Shop. All Rights Reserved</p>
						</div>
					</div>
				</div>
				<div id="scroll">
					<a href="{{asset('/')}}"><img src="img/home/scroll.png"></a>
				</div>
			</div>
		</div>
	</footer>
	<!-- endfooter -->
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript">
		$(function() {
			var pull = $('#pull');
			menu = $('nav ul');
			menuHeight = menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});
		});

		$(window).resize(function() {
			var w = $(window).width();
			if (w > 320 && menu.is(':hidden')) {
				menu.removeAttr('style');
			}
		});

		$(document).ready(function() {
			$('.add-cart>a').click(function(event){
				event.preventDefault();
				var name = $(this).data('name');
				var href = $(this).attr('href');
				$.ajax({
					url: href,
					type: 'GET',
					data:{},
					dataType: "json",
					success: function(res){
						if(res.ok == 'ok'){
							$('#alert-pro-name').html('Sản phẩm <strong>'+ name +'</strong> đã được thêm vào giỏ hàng');
							$('#modal-add-cart').modal('show');
							$('#count-cart').text(res.countCart);
						}
					}
				})
			});
		});
	</script>
</body>

</html>