<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="content-wrapper">
	<div class="col-sm-offset-0 col-sm-12">
		<div class="content-header">
			<div >
				<div class="row mb-2">
					<div class="col-sm-6">
						<h3 cs>Xem Đơn Hàng</h3>
					</div>
					<div class="col-sm-6" style="text-align: right; font-size: 20px;">
						<!-- <a href="#" style="font-size: 20px;margin-top: 20px"class="glyphicon glyphicon-plus">Thêm</a>  -->
						<a href="${pageContext.request.contextPath}/admin/donhang/xulydonhang" > 
							Quay Về
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="table">
		<table class="table">
			<thead>
				<tr>
					<th>Tên Hàng</th>
					<th>Ảnh Hàng</th>
					<th>Số Lượng</th>
					<th>Đơn Giá</th>					
				</tr>
			</thead>		
			<tbody>
			
			<c:forEach items="${dsdonHang}" var="dsdh" >
				<tr>
					<td>${dsdh.tenHang}</td>
					<td><img style="max-width: 50px; height: 50px"
							src="${pageContext.request.contextPath}/template/client//img/${dsdh.imageLink }"
							alt=""></td>
					<td>${dsdh.soLuong}</td>
					<td>${dsdh.donGia}</td>
				</tr>
				
			</c:forEach>
			</tbody>
		</table>
		
	</div>
</div>