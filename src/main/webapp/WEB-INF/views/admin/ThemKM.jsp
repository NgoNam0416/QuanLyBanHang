<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css">
.inputfile {
  width: 0.1px;
  height: 0.1px;
  opacity: 0;
  overflow: hidden;
  position: absolute;
  z-index: -1;
}
</style>
<div class="container margin_60" style="width: 608px;">
	<section class="content-header">
		<div>
			<h1>THÊM KHUYẾN MÃI</h1>
		</div>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="">

					<!-- MyUploadForm -->
					<form:form modelAttribute="khuyenMaiInfo" method="POST"
						action="${pageContext.request.contextPath}/admin/khuyenmai/them"
						enctype="multipart/form-data" onsubmit="return myFunction()">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Tên khuyến mãi</label>

									<form:input path="tenKM" type="text" class="form-control"
										 id="tenLoai" />
									
								</div>
								<div class="form-group">
									<label>Phần trăm(%)</label>

									<form:input path="phanTram" type="text" class="form-control"
										 id="tenLoai" />
									
								</div>
							</div>
						 
						</div>
						
						<div class="row" style="margin-top: 10px">
							<div class="col-sm-6">
								<button type="submit" id="ThemHang"
									class="btn btn-primary" >Thêm</button>

								<a href="${pageContext.request.contextPath}/admin/khuyenmai/show" class="btn btn-info "> <span></span> Cancel
								</a>
							</div>
						</div>
					</form:form>

				</div>
			</div>
		</div>
			<script type="text/javascript">
			function myFunction() {
			var tenHang= document.getElementById("tenHang").value;
			var image= document.getElementById("file-2").value;
			var ngayNhapHang= document.getElementById("ngayNhapHang").value;
			var noiSX= document.getElementById("noiSX").value;
			var donVi= document.getElementById("donVi").value;			
			 submitOK = "true";			 
			if(tenHang=="" || ngayNhapHang=="" || noiSX=="" || donVi=="" ){
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
	</section>
</div>
<br>
<br>

