@extends('backend.master')
@section('title','Quản lý đơn hàng')
@section('main')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Đơn hàng</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-xs-12 col-md-12 col-lg-12">
				
				<div class="panel panel-primary">
					<div class="panel-heading">Danh sách đơn hàng</div>
					<div class="panel-body">
						<div class="bootstrap-table">
							<div class="table-responsive">
								<table class="table table-bordered" id="my-table" style="margin-top:20px;">				
									<thead>
										<tr class="bg-primary text-center">
											<th>ID</th>
											<th width="30%">Tên người đặt</th>
											<th>Tổng giá tiền</th>
											<th width="20%">Tình trạng đơn hàng</th>
											<th>Tùy chọn</th>
										</tr>
									</thead>
									<tbody>
										@foreach($all_order as $order)
										<tr>
											<td>{{$order->order_id}}</td>
											<td>{{$order->shipping_name}}</td>
											<td>{{$order->order_total}} đ</td>
											<td>{{$order->order_status}}</td>
											<td class="text-center">
												<a href="{{asset('admin/order/view/'.$order->order_id)}}" class="btn btn-warning" title="Xem thông tin đơn hàng"><i class="fas fa-eye" aria-hidden="true"></i> Xem</a>
												<a href="{{asset('admin/order/delete/'.$order->order_id)}}" class="btn btn-danger" title="Xóa đơn hàng"><i class="fa fa-trash" aria-hidden="true"></i> Xóa</a>
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
		</div><!--/.row-->
	</div>	<!--/.main-->

@stop