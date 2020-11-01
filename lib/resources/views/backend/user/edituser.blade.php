@extends('backend.master')
@section('title','Cập nhật thông tin thành viên')
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
				<div class="panel-heading">Cập nhật thành viên</div>
				<div class="panel-body">
					@include('errors.note')
					<form method="post" enctype="multipart/form-data">
						<div class="row" style="margin-bottom:40px">
							<div class="col-xs-8">
								<div class="form-group">
									<label for="name">Họ tên:</label>
									<input required type="text" name="name" id="name" class="form-control" value="{{$user->name}}">
								</div>
								<div class="form-group">
									<label for="username">Tên tài khoản:</label>
									<input required type="text" name="username" id="username" class="form-control" value="{{$user->username}}" readonly>
								</div>
								<div class="form-group">
									<label for="email">Email:</label>
									<input type="text" required name="email" id="email" class="form-control" value="{{$user->email}}">
								</div>
								<div class="form-group">
									<label for="phone">Phone: </label>
									<input required type="number" name="phone" id="phone" class="form-control" value="{{$user->phone}}">
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
								<div class="form-group">
									<label for="level">Level: </label>
									<select required name="level" class="form-control">
										<option value="0" @if($user->level == 0) selected @endif>User</option>
										<option value="1" @if($user->level == 1) selected @endif>Admin</option>
									</select>
								</div>
								<input type="submit" name="submit" value="Cập nhật" title="Cập nhật thành viên" class="btn btn-primary">
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