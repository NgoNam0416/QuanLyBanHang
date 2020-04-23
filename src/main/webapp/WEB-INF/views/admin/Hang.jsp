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
						<h3 cs>QUẢN LÝ HÀNG</h3>
					</div>
					<div class="col-sm-6" style="text-align: right; font-size: 20px;">
						<!-- <a href="#" style="font-size: 20px;margin-top: 20px"class="glyphicon glyphicon-plus">Thêm</a>  -->
						<a href="${pageContext.request.contextPath}/admin/hang/addhang" class="btn btn-outline-success"> <span class="fa fa-plus"></span>
							Thêm
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
					<th>Tên hàng</th>
					<th>Image</th>
					<th>Đơn giá</th>
					<th>Số Lượng</th>
					<th>Trạng Thái</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${loadHang}" var="h">
					<tr>
						<td>${h.tenHang}</td>
						<td><img style="max-width: 50px; height: 50px"
							src="${pageContext.request.contextPath}/template/client/img/${h.imageLink }"
							alt=""></td>
						<td>${h.donGia }</td>
						<td>${h.soLuong}</td>
						<td>${h.trangThai }</td>
						<td><a href="${pageContext.request.contextPath}/admin/hang/suahang/${h.maHang }">
								<button data-toggle="tooltip"
									style="border: 2px solid lightgrey; border-radius: 5px;"
									data-original-title="Sửa">
									<i class="fa fa-edit" aria-hidden="true"></i>
								</button>
						</a>
						<a href="${pageContext.request.contextPath}/admin/hang/xoahang?maHang=${h.maHang }" onclick="
							return confirm('Bạn có chắc chắn muốn xóa mặt hàng này không? ')">
						<button data-toggle="tooltip"
								style="border: 2px solid lightgrey; border-radius: 5px;"
								data-original-title="Xóa">
								<i class="fa fa-trash" aria-hidden="true"></i>
							</button>
						</a>
							</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
</div>