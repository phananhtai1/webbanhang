<!DOCTYPE html>
<html>

<head>
	<base href="{{asset('public/layout/backend')}}/">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Forms</title>

	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">

	<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
	<?php
	$url_prev = url()->previous(); 
	session()->put('url_prev',$url_prev);
	?>
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Đăng Ký</div>
				<div class="panel-body">
					<form role="form" method="post">
						<fieldset>
							@include('errors.note')
							<div class="form-group">
								<input class="form-control" name="name" type="text" placeholder="Nhập họ tên..." value="{{old('name')}}">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Nhập tên tài khoản..." name="username" type="text" value="{{old('username')}}">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Nhập email... " name="email" value="{{old('email')}}">
							</div>
							<div class="form-group">
								<input type="number" class="form-control" placeholder="Nhập số điện thoại" name="phone" value="{{old('phone')}}">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Nhập mật khẩu..." name="create_password" type="password" value="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Nhập lại mật khẩu..." name="repeat_password" type="password" value="">
							</div>
							<input type="submit" name="submit" value="Đăng Ký" class="btn btn-primary">
						</fieldset>
						{{csrf_field()}}
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->



	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		! function($) {
			$(document).on("click", "ul.nav li.parent > a > span.icon", function() {
				$(this).find('em:first').toggleClass("glyphicon-minus");
			});
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function() {
			if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function() {
			if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>
</body>

</html>