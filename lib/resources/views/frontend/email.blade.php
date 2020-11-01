<div id="wrap-inner" style="font-family:Arial">
	<div id="khach-hang">
		<h3 style="color:#FF9600">Thông tin khách hàng</h3>
		<p>
			<strong>Khách hàng: </strong>
			{{$info['name']}}
		</p>
		<p>
			<strong class="info">Email: </strong>
			{{$info['email']}}
		</p>
		<p>
			<strong class="info">Điện thoại: </strong>
			{{$info['phone']}}
		</p>
		<p>
			<strong class="info">Địa chỉ: </strong>
			{{$info['address']}}
		</p>
	</div>
	<div id="hoa-don">
		<h3 style="color:#FF9600">Hóa đơn mua hàng</h3>
		<table border="1" cellspacing="0">
			<tr class="bold">
				<td width="30%"><strong>Tên sản phẩm</strong></td>
				<td width="25%"><strong>Giá</strong></td>
				<td width="20%"><strong>Số lượng</strong></td>
				<td width="15%"><strong>Thành tiền</strong></td>
			</tr>
			@foreach($cart as $item)
			<tr>
				<td>{{$item->name}}</td>
				<td class="price">{{number_format($item->price,0,'.','.')}}đ</td>
				<td style="text-align: center;">{{$item->qty}}</td>
				<td class="price">{{number_format($item->price*$item->qty,0,'.','.')}}đ</td>
			</tr>
			@endforeach
			<tr>
				<td colspan="3" style="font-weight: bold;">Tổng tiền:</td>
				<td class="total-price">{{$total}}đ</td>
			</tr>
		</table>
	</div>
	<div id="xac-nhan">
		<br>
		<p>
			<b style="color:#FF9600">Quý khách đã đặt hàng thành công!</b><br />
			• Sản phẩm của Quý khách sẽ được chuyển đến Địa chỉ có trong phần Thông tin Khách hàng sau thời gian 2 đến 3 ngày, tính từ thời điểm này.<br />
			• Nhân viên giao hàng sẽ liên hệ với Quý khách qua Số Điện thoại trước khi giao hàng 24 tiếng.<br />
			<b><br />Cám ơn Quý khách đã sử dụng Sản phẩm của cửa hàng chúng tôi. Xin chân thành cảm ơn</b>
		</p>
	</div>
</div>
<!-- end main -->