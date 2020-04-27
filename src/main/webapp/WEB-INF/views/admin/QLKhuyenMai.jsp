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
						<h3 cs>QUẢN LÝ Marketing</h3>
					</div>
					<div class="col-sm-6" style="text-align: right; font-size: 20px;">
						<!-- <a href="#" style="font-size: 20px;margin-top: 20px"class="glyphicon glyphicon-plus">Thêm</a>  -->
						<a href="${pageContext.request.contextPath}/admin/khuyenmai/them" class="btn btn-outline-success"> <span class="fa fa-plus"></span>
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
					<th>Mã khuyến mãi</th>
					<th>Tên khuyến mãi</th>
					<th>Phần trăm giảm giá(%)</th>
					<th></th>
				</tr>
			</thead>
			<p></p>
			<tbody>
				<c:forEach items="${khuyenMai}" var="k"> 
					<tr>
						<td>${k.maKM}</td>
						<td>${k.tenKM}</td>
						<td>${k.phanTram}</td>
						<td><a href="">
								<button data-toggle="tooltip"
									style="border: 2px solid lightgrey; border-radius: 5px;"
									data-original-title="Sửa">
									<i class="fa fa-edit" aria-hidden="true"></i>
								</button>
						</a>
						<a href="${pageContext.request.contextPath}/admin/loaihang/xoaloai?maHang=${h.maLoai }" onclick="
							return confirm('Bạn có chắc chắn muốn xóa loại hàng này không? ')">
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