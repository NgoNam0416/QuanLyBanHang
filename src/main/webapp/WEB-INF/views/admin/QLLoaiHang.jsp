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
						<h3 cs>QUẢN LÝ LOẠI HÀNG</h3>
					</div>
					<div class="col-sm-6" style="text-align: right; font-size: 20px;">
						<!-- <a href="#" style="font-size: 20px;margin-top: 20px"class="glyphicon glyphicon-plus">Thêm</a>  -->
						<a href="" class="btn btn-info "> <span class="fa fa-plus"></span>
							Thêm loại hàng
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
					<th>Mã loại hàng</th>
					<th>Tên loại hàng</th>
					<th>Mã khuyến mãi</th>
					<th></th>
				</tr>
			</thead>
			<p></p>
			<tbody>
				<c:forEach items="${loadLoaiHang}" var="h"> 
					<tr>
						<td>${h.maLoai}</td>
						<td>${h.tenLoai}</td>
						<td>${h.maKM}</td>
						<td><a href="">
								<button data-toggle="tooltip"
									style="border: 2px solid lightgrey; border-radius: 5px;"
									data-original-title="Sửa">
									<i class="fa fa-edit" aria-hidden="true"></i>
								</button>
						</a>
						<a href="" onclick="
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