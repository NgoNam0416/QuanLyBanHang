<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/client/css/linearicons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/client/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/client/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/client/css/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/client/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/client/css/nouislider.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/client/css/ion.rangeSlider.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/client/css/ion.rangeSlider.skinFlat.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/client/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/client/css/style_img.css">
</head>
<body>
	<!--================Cart Area =================-->
	<style>
.cart_area {
	display: none;
}
</style>
	<style>
.cart_area {
	display: unset;
}
</style>
	<c:set var="sl" value="0"></c:set>
	<c:forEach var="item" items="${sessionScope.cart }">
		<c:set var="sl" value="${sl + 1 }"></c:set>
	</c:forEach>
	<div style="padding-left:400px;">
	<c:if test="${sl == 0 }">
		<a href="${pageContext.request.contextPath}/"><h3>Không có
				hàng trong giỏ vui lòng hay mua thêm!!</h3></a>
	</c:if>
	</div>
	<c:if test="${sl != 0 }">
		<section class="cart_area">
			<div class="container">
				<div class="cart_inner">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>

									<th scope="col">Sản Phẩm</th>
									<th scope="col">Giá</th>
									<th scope="col">Số Lượng</th>
									<th scope="col">Tổng Giá</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${sessionScope.cart }">
									<tr>

										<td>
											<div class="media">
												<div class="col-md-6">
													<div>
														<img style="height: 150px;"
															src="${pageContext.request.contextPath}/template/client/img/${item.hang.imageLink }">
													</div>
												</div>
												<div class="col-md-6"
													style="padding-top: 60px; padding-bottom: 30px; vertical-align: middle; align-self: center;">
													${item.hang.tenHang }</div>
										</td>

										<td style="padding-top: 70px;">
											<h5 id="" data-id="">
												<fmt:formatNumber type="currency"
													value="${item.hang.donGia }" />
											</h5>
										</td>
										<td style="padding-top: 50px;">
											<div class="qty-label">
												<div class="input-number">
													<input style="width: 80px;" type="number"
														value="${item.soLuong }" readonly> <a
														href="${pageContext.request.contextPath}/buy/${item.hang.maHang }">
														<span class="qty-up">+</span>
													</a> <a
														href="${pageContext.request.contextPath}/minus/${item.hang.maHang }">
														<span class="qty-down">-</span>
													</a>
												</div>
											</div>
										</td>
										<td style="padding-top: 70px;">
											<h5 id="tt_">
												<fmt:formatNumber type="currency"
													value="${item.hang.donGia*item.soLuong }" />
											</h5>
										</td>
										<td style="padding-top: 53px;"><span><a
												href="${pageContext.request.contextPath}/remove/${item.hang.maHang }"
												onclick="return confirm('Bạn có muốn xóa khỏi giỏ hàng?')"><button
														class="delete_product" type="button" id="delete_product"
														data-id="" value="">
														<i class="fa fa-trash"></i>
													</button> </a> </span></td>
									</tr>
								</c:forEach>
								<tr class="bottom_button">
									<td><a class="gray_btn" id="delete_cart" data-id=""
										href="${pageContext.request.contextPath}">Tiếp Tục Mua
											Hàng</a></td>
									<td></td>
									<td></td>
									<td>
										<div>
											<a class="primary-btn" id="thanhtoan"
												href="${pageContext.request.contextPath}/thanhtoan">Thanh
												Toán</a>

										</div>
									</td>
									<td></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>
	</c:if>

	<!--================End Cart Area =================-->
	<script
		src="${pageContext.request.contextPath}/template/client/js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/template/client/js/vendor/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/template/client/js/jquery.ajaxchimp.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/template/client/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/template/client/js/jquery.sticky.js"></script>
	<script
		src="${pageContext.request.contextPath}/template/client/js/nouislider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/template/client/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/template/client/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script
		src="${pageContext.request.contextPath}/template/client/js/gmaps.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/template/client/js/main.js"></script>

</body>
</html>