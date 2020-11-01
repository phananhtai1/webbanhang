@extends('backend.master')
@section('title','Danh mục sản phẩm')
@section('main')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Danh mục sản phẩm</h1>
		</div>
	</div>
	<!--/.row-->

	<div class="row">
		<div class="col-xs-12 col-md-5 col-lg-5">
			<div class="panel panel-primary">
				<div class="panel-heading">
					Thêm danh mục
				</div>
				<div class="panel-body">
				@include('errors.note')
					<form method="post">
						<div class="form-group">
							<label>Tên danh mục:</label>
							<input type="text" name="name" class="form-control" placeholder="Tên danh mục...">
						</div>
						<div class="form-group">
							<input type="submit" name="submit" class="form-control btn btn-primary" value="Thêm mới">
						</div>
						{{csrf_field()}}
					</form>
				</div>
			</div>
		</div>
		<div class="col-xs-12 col-md-7 col-lg-7">
			<div class="panel panel-primary">
				<div class="panel-heading">Danh sách danh mục</div>
				<div class="panel-body">
					<div class="bootstrap-table">
						<table class="table table-bordered" id="my-table">
							<thead>
								<tr class="bg-primary">
									<th>Tên danh mục</th>
									<th style="width:30%">Tùy chọn</th>
								</tr>
							</thead>
							<tbody>
								@foreach($catlist as $cat)
								<tr>
									<td>{{$cat->cat_name}}</td>
									<td class="text-center">
										<a href="{{asset('admin/category/edit/'.$cat->cat_id)}}" class="btn btn-warning" title="Sửa danh mục sản phẩm">
											<i class="fas fa-edit" aria-hidden="true"></i> Sửa</a>
										<a href="{{asset('admin/category/delete/'.$cat->cat_id)}}" onclick="return confirm('Bạn có chắc chắn muốn xóa danh mục này?')" class="btn btn-danger"  title="Xóa danh mục sản phẩm">
											<i class="fa fa-trash" aria-hidden="true"></i> Xóa</a>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
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