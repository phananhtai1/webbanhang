@extends('backend.master')
@section('title','Quản lý bình luận')
@section('main')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Bình luận</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-xs-12 col-md-12 col-lg-12">
				
				<div class="panel panel-primary">
					<div class="panel-heading">Danh sách bình luận</div>
					<div class="panel-body">
						<div class="bootstrap-table">
							<div class="table-responsive">
								@include('errors.note')
								<table class="table table-bordered" id="my-table" style="margin-top:20px;">				
									<thead>
										<tr class="bg-primary text-center">
											<th>ID</th>
											<th width="30%">Tên người bình luận</th>
											<th>Email</th>
											<th width="20%">Tên sản phầm bình luận</th>
											<th>Ngày bình luận</th>
											<th>Tùy chọn</th>
										</tr>
									</thead>
									<tbody>
										@foreach($all_comment as $comment)
										<tr>
											<td>{{$comment->com_id}}</td>
											<td>{{$comment->com_name}}</td>
											<td>{{$comment->com_email}}</td>
											<td>{{$comment->prod_name}}</td>
											<td>{{date('d/m/Y', strtotime($comment->created_at))}}</td>
											<td class="text-center">
												<a href="{{asset('admin/comment/view/'.$comment->com_id)}}" class="btn btn-warning" title="Xem thông tin bình luận"><i class="fas fa-eye" aria-hidden="true"></i>Xem</a>
												<a href="{{asset('admin/comment/delete/'.$comment->com_id)}}" onclick="return confirm('Bạn có chắc chắn muốn xóa bình luận này!!!')" class="btn btn-danger" title="Xóa bình luận"><i class="fa fa-trash" aria-hidden="true"></i> Xóa</a>
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
		</div>/.row
	</div>	<!--/.main-->

@stop