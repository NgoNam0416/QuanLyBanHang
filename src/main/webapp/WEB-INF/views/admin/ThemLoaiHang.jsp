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
			<h1>THÊM LOẠI HÀNG</h1>
		</div>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="">

					<!-- MyUploadForm -->
					<form:form modelAttribute="themLoaiInfo" method="POST"
						action="${pageContext.request.contextPath}/admin/loaihang/them/hoantat"
						enctype="multipart/form-data" onsubmit="return myFunction()">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
						          <label for="pwd" id="label_tkh">Tên loại hàng:</label>
						          <input type="text" class="form-control" id="tenLoaiHang" placeholder="Nhập tên loại hàng" path="tenLoai">
						        </div>
						         <div class="form-group">
						           <label for="pwd" id="maKM">Mã khuyến mãi:</label>
						           <select path="maKM">
							       	<option <%-- items="${khuyenMai}" itemLabel="tenKM"
											itemValue="maKM" --%>>hello</option>
							      </select>
						        </div>
							</div>
							
						</div>
						<div class="row" style="margin-top: 10px">
							<div class="col-sm-6">
								<button type="submit" id="ThemHang"
									class="btn btn-primary" >Thêm</button>

								<a href="${pageContext.request.contextPath}/admin/loaihang" class="btn btn-info "> <span></span> Cancel
								</a>
							</div>
						</div>
					</form:form>

				</div>
			</div>
		</div>
			<script type="text/javascript">
			function myFunction() {
			var tenHang= document.getElementById("tenLoaiHang").value;
					
			 submitOK = "true";			 
			if(tenLoaiHang=="" ){
				 alert("Vui lòng điền thông tin tên loại hàng!");
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

