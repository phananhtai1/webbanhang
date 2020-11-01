@extends('backend.master')
@section('title','Thêm thành viên')
@section('main')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Thành viên</h1>
		</div>
	</div>
	<!--/.row-->

	<div class="row">
		<div class="col-xs-12 col-md-12 col-lg-12">

			<div class="panel panel-primary">
				<div class="panel-heading">Thêm thành viên</div>
				<div class="panel-body">
				@include('errors.note')
					<form method="post" enctype="multipart/form-data">
						<div class="row" style="margin-bottom:40px">
							<div class="col-xs-8">
								<div class="form-group">
									<label for="name">Họ tên:</label>
									<input required type="text" name="name" id="name" class="form-control" value="{{old('name')}}" autofocus>
								</div>
								<div class="form-group">
									<label for="username">Tên tài khoản:</label>
									<input required type="text" name="username" id="username" class="form-control" value="{{old('username')}}" placeholder="Nhập tên tài khoản...">
								</div>
								<div class="form-group">
									<label for="email">Email:</label>
									<input type="text" required name="email" id="email" class="form-control" value="{{old('email')}}" placeholder="Nhập email...">
								</div>
								<div class="form-group">
									<label for="phone">Phone: </label>
									<input required type="number" name="phone" id="phone" class="form-control" value="{{old('phone')}}" placeholder="Nhập số điện thoại...">
								</div>
								<div class="form-group">
									<label for="create_pw">Mật khẩu:</label>
									<input required type="password" name="create_password" id="create_pw" class="form-control" placeholder="Nhập mật khẩu...">
								</div>
								<div class="form-group">
									<label for="repeat_pw">Nhập lại mật khẩu: </label>
									<input required type="password" name="repeat_password" id="repeat_pw" class="form-control" placeholder="Nhập lại mật khẩu...">
								</div>
								<div class="form-group">
									<label for= "level">Level: </label>
									<select required name="level" class="form-control">
										<option value="0">User</option>
										<option value="1">Admin</option>
									</select>
								</div>
								<input type="submit" name="submit" value="Thêm" title="Thêm thành viên" class="btn btn-primary">
								<a href="{{asset('admin/user')}}" title="Hủy" onclick="return confirm('Bạn chắc chắn muốn hủy thêm thành viên')" class="btn btn-danger">Hủy bỏ</a>
							</div>
						</div>
						{{csrf_field()}}
					</form>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--/.row-->
</div>
<!--/.main-->

@endsection