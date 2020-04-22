<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="container margin_60" style="width: 608px;">
	<section class="content-header">
		<div>
			<h1>THÊM NGƯỜI DÙNG</h1>
		</div>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="">

					<!-- MyUploadForm -->
					<form:form modelAttribute="userInfo" method="POST"
						action="${pageContext.request.contextPath}/admin/user/add/themu"
						enctype="multipart/form-data">
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>Tên Đăng Nhập</label>

									<form:input path="userName" class="form-control"
										placeholder="Tên đăng nhập" id="userName" />

								</div>
							</div>

						</div>
					
					<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>Mật Khẩu</label>

									<form:input path="passWord" type="password" class="form-control"
										placeholder="mật khẩu" id="passWord" />

								</div>
							</div>

						</div>
						
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>Họ Tên</label>

									<form:input path="hoTen" class="form-control"
										placeholder="Nhập họ tên" id="hoTen" />

								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>Địa Chỉ</label>

									<form:input path="diaChi" class="form-control"
										placeholder="Địa chỉ" id="diaChi" />

								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>SĐT</label>

									<form:input path="sDT" class="form-control"
										placeholder="Số điện thoại" id="sDT" />

								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>Loại</label>

									<form:input path="loai" class="form-control"
										placeholder="Loại" id="loai" />

								</div>
							</div>

						</div>
						<div class="row">
						<div class="col-sm-6">
								<div class="form-group">
									<label>Thêm Ảnh Đại Diện</label>
									<form:input path="anhuser" type="file"
										></form:input>
									
								</div>
							</div>
						</div>
						<div class="row" style="margin-top: 10px">
							<div class="col-sm-6">
								<button type="submit" id="" class="btn btn-primary">Thêm</button>

								<a href="${pageContext.request.contextPath}/admin/user"
									class="btn btn-info "> <span></span> Cancel
								</a>
							</div>
						</div>
					</form:form>

				</div>
			</div>
		</div>
	</section>
</div>
<
