<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="content-wrapper">
	<div class="col-sm-offset-0 col-sm-12">
		<div class="content-header">
			<div>
				<div class="row mb-2">
					<div class="col-sm-6">
						<h3>Xử Lý Đơn Hàng</h3>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="table">
		<table class="table">
			<thead>
				<tr>
					<th>Tên Người Nhận</th>
					<th>Địa Chỉ Nhận Hàng</th>
					<th>Số Điện Thoại</th>
					<th>Tổng Tiền</th>
					<th></th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${donHang}" var="dh">
					<tr>
						<td>${dh.tenNguoiNhan}</td>
						<td>${dh.diaChiNhanHang}</td>
						<td>${dh.sDT}</td>
						<td>${dh.tongTien}</td>
						<td><a
							href="${pageContext.request.contextPath}/admin/donhang/xemdonhang?maDH=${dh.maDH }"
							class="btn btn-info " style="padding: 1px;">Xem</a> 
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>