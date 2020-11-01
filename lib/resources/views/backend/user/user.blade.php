@extends('backend.master')
@section('title','Danh sách thành viên')
@section('main')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Thành viên</h1>
		</div>
	</div>
	<!--/.row-->
	<?php
	use Illuminate\Support\Facades\Auth;
		$username = Auth::user()->username;
	?>
	<div class="row">
		<div class="col-xs-12 col-md-12 col-lg-12">

			<div class="panel panel-primary">
				<div class="panel-heading">Danh sách thành viên</div>
				<div class="panel-body">
					<div class="bootstrap-table">
						<div class="table-responsive">
							@include('errors.note')
							<a href="{{asset('admin/user/add')}}" class="btn btn-primary btn-add" title="Thêm thành viên">Thêm thành viên</a>
							<table class="table table-bordered" id="my-table" style="margin-top:20px;">
								<thead>
									<tr class="bg-primary">
										<th>ID</th>
										<th width="20%">Tên thành viên</th>
										<th>Tên tài khoản</th>
										<th>Email</th>
										<th>Số điện thoại</th>
										<th>level</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									@foreach($users as $user)
									<tr>
										<td>{{$user->id}}</td>
										<td>{{$user->name}}</td>
										<td>{{$user->username}}</td>
										<td>{{$user->email}}</td>
										<td>{{$user->phone}}</td>
										<td>
											@if($user->level == 1)
											{{"Admin"}}
											@else
											{{"User"}}
											@endif
										</td>
										<td class="text-center">
											<a href="{{asset('admin/user/edit/'.$user->id)}}" title="Cập nhật thông tin người dùng" class="btn btn-warning">
												<i class="fas fa-edit" aria-hidden="true"></i> Sửa</a>
											@if($username == $user->username)
												<a title="Xóa người dùng" href="{{asset('admin/user')}}" 
													class="btn btn-danger" onclick="return confirm('Bạn không thể xóa Admin đang đăng nhập!!!')" >
												<i class="fa fa-trash" aria-hidden="true"></i> Xóa</a>
											@else
												<a title="Xóa người dùng" href="{{asset('admin/user/delete/'.$user->id)}}" 
													class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa người dùng này!!!')" >
												<i class="fa fa-trash" aria-hidden="true"></i> Xóa</a>
											@endif
											
										</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--/.row-->
</div>
<!--/.main-->
@stop