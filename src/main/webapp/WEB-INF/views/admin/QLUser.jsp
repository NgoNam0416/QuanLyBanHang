<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Quản Lý Nhân Viên</h1>
				</div>
				<div class="col-sm-6" style="text-align: right; font-size: 20px;">
						<!-- <a href="#" style="font-size: 20px;margin-top: 20px"class="glyphicon glyphicon-plus">Thêm</a>  -->
						<a href="${pageContext.request.contextPath}/admin/user/add" class="btn btn-info "> <span class="fa fa-plus"></span>
							Thêm
						</a>
					</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<div class="card-tools">
								<div class="input-group input-group-sm" style="width: 150px;">
									<input type="text" name="table_search"
										class="form-control float-right" placeholder="Search">

									<div class="input-group-append">
										<button type="submit" class="btn btn-default">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<!-- /.card-header -->
						<div class="card-body table-responsive p-0" style="height: 300px;">
							<table class="table table-head-fixed">
								<thead>
									<tr>
										<th>Họ và Tên</th>
										<th>Image</th>
										<th>Địa Chỉ</th>
										<th>SĐT</th>
										<th>Loại</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listUser }" var="u">
										<tr>
											<td>${u.hoTen }</td>
											<td><img style="max-width: 50px; height: 50px" src="${pageContext.request.contextPath}/template/client//img/${u.imageLink }" /></td>
											<td>${u.diaChi }</td>
											<td>${u.sDT }</td>
											<td>${u.loai }</td>
												<td><a href="#">
												<button data-toggle="tooltip"
														style="border: 2px solid lightgrey; border-radius: 5px;"
														data-original-title="Sửa">
													<i class="fa fa-edit" aria-hidden="true"></i>
												</button>
										</a>
										<a
												href="${pageContext.request.contextPath}/admin/user/delete?id=${u.id}"
												onclick="return confirm('Bạn có chắc chắn muốn xóa người dùng này không? ')">
													<button data-toggle="tooltip"
														style="border: 2px solid lightgrey; border-radius: 5px;"
														data-original-title="Xóa">
														<i class="fa fa-trash" aria-hidden="true"></i>
													</button>
											</a></td>
										</tr>
								
								</tbody>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>