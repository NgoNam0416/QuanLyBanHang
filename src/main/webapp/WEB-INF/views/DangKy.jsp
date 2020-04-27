<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<form:form modelAttribute="nguoiDungInfo" method="POST"
		action="${pageContext.request.contextPath}/dangky/thanhcong"
		enctype="multipart/form-data" onsubmit="return myFunction()">
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-2"></div>

					<!-- Order Details -->
					<div class="col-md-8 order-details">
						<div>
							<h3 class="title" style="text-align: center;">Đăng Ký Thành
								Viên</h3>
						</div>
						<div style="padding-left: 100px;">

							<div class="form-group col-md-10">
								<label>Tên Đăng Nhập</label>
								<form:input class="input" type="text" path="tenDN" id="tenDN"
									placeholder="Tên Đăng Nhập" />
							</div>
							<div class="form-group col-md-10">
								<label>Mật Khẩu</label>
								<form:input class="input" type="password" path="matKhau"
									id="matKhau" placeholder="Mật Khẩu" />
							</div>
							<div class="form-group col-md-10">
								<label>Họ Và Tên</label>
								<form:input class="input" type="text" path="hoTen" id="hoTen"
									placeholder="Họ Và Tên " />
							</div>
							<div class="form-group col-md-10">
								<label>Địa Chỉ</label>
								<form:input class="input" type="text" path="diaChi" id="diaChi"
									placeholder="Địa Chỉ" />
							</div>
							<div class="form-group col-md-10">
								<label>Số điện thoại</label>
								<form:input class="input" type="number" path="sDT" id="sdt"
									placeholder="Số điện thoại" />
							</div>
							<div class="form-group col-md-10">
								<label>Email</label>
								<form:input class="input" type="email" path="email" id="email"
									placeholder="Email" />
							</div>
							<div class="form-group col-md-10">
								<form:input type="file" path="anhuser" id="file-2"
									style="width: 0.1px;height: 0.1px;opacity: 0;overflow: hidden;position: absolute;z-index: -1;"></form:input>
								<label for="file-2"><span>Thêm Ảnh Đại Diện</span> <svg
										xmlns="http://www.w3.org/2000/svg" width="20" height="17"
										viewBox="0 0 20 17">
						          <path
											d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path>
						          </svg><span><-Chọn ảnh</span></label>
							</div>
							<div class="form-group col-md-10" style="padding-left: 200px;">
								<button type="submit" name="submit"
									class="btn btn-success float-left"">Hoàn thành</button>
							</div>
						</div>

					</div>
				</div>
				<!-- /Order Details -->
			</div>
			<!-- /container -->
	<c:if test="${thongbao != null }">
		<script type="text/javascript">									
			alert("Tên đăng đã tồn tại");																
		</script>	
	</c:if>

		<script type="text/javascript">
			function myFunction() {
			var tenDN= document.getElementById("tenDN").value;
			var image= document.getElementById("file-2").value;
			var matKhau= document.getElementById("matKhau").value;
			var hoTen= document.getElementById("hoTen").value;
			var diaChi= document.getElementById("diaChi").value;
			var sdt= document.getElementById("sdt").value;
			var email= document.getElementById("email").value;
			 submitOK = "true";			 
			if(tenDN=="" || matKhau=="" || hoTen=="" || diaChi=="" || sdt=="" || email==""){
				 alert("Vui lòng điền đủ thông tin");
				    submitOK = "false";
			}
			
			if(image==""){
				 alert("Bạn chưa chọn ảnh. Hãy chọn một ảnh ở bên dưới");
				    submitOK = "false";
			}
			
			 if (submitOK == "false") {
				    return false;
				  }
			}
		</script>
		</div>
		</form:form>
	
</body>
</html>