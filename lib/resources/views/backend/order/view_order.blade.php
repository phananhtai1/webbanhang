@extends('backend.master')
@section('title','Xem thông tin đơn hàng')
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
					<div class="panel-heading">Thông tin tài khoản khách hàng</div>
					<div class="panel-body">
						<div class="bootstrap-table">
							<div class="table-responsive">
								<table class="table table-bordered">				
									<thead>
										<tr class="bg-primary text-center">
											<th>Tên chủ tài khoản</th>
											<th>Số điện thoại</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>{{$all_order->name}}</td>
											<td>{{$all_order->phone}}</td>
										</tr>
									</tbody>
								</table>							
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<br><br>
			<div class="col-xs-12 col-md-12 col-lg-12">	
				<div class="panel panel-primary">
					<div class="panel-heading">Thông tin người đặt</div>
					<div class="panel-body">
						<div class="bootstrap-table">
							<div class="table-responsive">
								<table class="table table-bordered">				
									<thead>
										<tr class="bg-primary text-center">
											<th width="30%">Tên người đặt</th>
											<th width="30%">Email</th>
											<th>Địa chỉ</th>
											<th width="20%">Số điện thoại</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>{{$all_order->shipping_name}}</td>
											<td>{{$all_order->shipping_email}}</td>
											<td>{{$all_order->shipping_address}}</td>
											<td>{{$all_order->shipping_phone}}</td>
										</tr>
									</tbody>
								</table>							
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-md-12 col-lg-12">
				
				<div class="panel panel-primary">
					<div class="panel-heading">Liệt kê chi tiết đơn hàng</div>
					<div class="panel-body">
						<div class="bootstrap-table">
							<div class="table-responsive">
								<table class="table table-bordered">				
									<thead>
										<tr class="bg-primary text-center">
											<th width="30%">Tên sản phẩm</th>
											<th>Số lượng</th>
											<th width="30%">Giá tiền</th>
											<th width="20%">Thành tiền</th>
										</tr>
									</thead>
									<tbody>
										@foreach($items as $item)
										<tr>
											<td class="text-left">{{$item->prod_name}}</td>
											<td>{{$item->quantity}}</td>
											<td>{{number_format($item->prod_price,0,',','.')}} đ</td>
											<td>{{number_format($item->quantity*$item->prod_price,0,',','.')}} đ</td>
										</tr>
										@endforeach
										<tr  style="font-weight: bold;">
											<td colspan="3">Tổng tiền:</td>
											<td class="text-danger text-center">{{$all_order->order_total}} đ</td>
										</tr>
									</tbody>
								</table>
								<div class="text-right">
									<a href="{{asset('admin/order')}}" class="btn btn-primary" title="Quay lại đơn hàng">Quay lại</a>
								</div>					
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			
		</div><!--/.row-->
	</div>	<!--/.main-->

@stop