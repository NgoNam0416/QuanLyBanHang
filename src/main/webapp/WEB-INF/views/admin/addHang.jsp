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
			<h1>THÊM HÀNG</h1>
		</div>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="">

					<!-- MyUploadForm -->
					<form:form modelAttribute="hangInfo" method="POST"
						action="${pageContext.request.contextPath}/admin/hang/addhang/them"
						enctype="multipart/form-data" onsubmit="return myFunction()">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Tên Hàng</label>

									<form:input path="tenHang" type="text" class="form-control"
										 id="tenHang" />

								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Đơn Giá</label>
									<form:input path="donGia" type="number" min='1' class="form-control"
										placeholder="Nhập đơn giá" id="donGia" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Ngày Nhập Hàng</label>
									<form:input path="ngayNhapHang" type="date"  class="form-control"
										id="ngayNhapHang" />
								</div>
							</div>

							<div class="col-sm-6">
								<div class="form-group">
									<label>Loại Hàng</label>  
									<form:select path="maLoai" class="form-control custom-select">
										<form:options items="${loaiHang}" itemLabel="tenLoai"
											itemValue="maLoai" />
									</form:select>


								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Nơi Sản Xuất</label>
									<form:input path="noiSX" type="text" class="form-control"
										placeholder="Nhập tên nhà sản xuất" id="noiSX" />

								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Đơn Vị</label>
									<form:input path="donVi" type="text" class="form-control"
										placeholder="Nhập đơn vị tính" id="donVi" />

								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Số Lượng</label>
									
									<form:input path="soLuong" type="number" min='1' class="form-control"
										placeholder="" id="soLuong" />
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>Trạng Thái</label>
									<form:select path="trangThai" class="form-control custom-select">
										<form:option value="Bán" label="Bán" />
										<form:option value="Không bán" label="Không bán" />
									</form:select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="form-group">
									<label>Thông Tin Thêm</label>
									
									<form:textarea path="tTThem" id="tTThem" class="form-control" style="height: 150px;"
											placeholder="Nhập giới thiệu về hàng"></form:textarea>
								</div>
							</div>
						</div>
						<div class="row">							
							<div class="col-sm-6">
								<form:input type="file" path="anh"  id="file-2" class="inputfile " ></form:input>
						          <label for="file-2"><span>Thêm Ảnh Hàng</span> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17">
						          <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path>
						          </svg><span><-Chọn ảnh</span></label>
					          </div>
							</div>
						</div>
						<div class="row" style="margin-top: 10px">
							<div class="col-sm-6">
								<button type="submit" id="ThemHang"
									class="btn btn-primary" >Thêm</button>

								<a href="${pageContext.request.contextPath}/admin/hang" class="btn btn-info "> <span></span> Cancel
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

