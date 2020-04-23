<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<c:if test="${hang_chitiet != null}">
					<div class="col-md-5 col-md-push-2">
						<div id="product-main-img">
							<div class="product-preview">
								<img
									src="${pageContext.request.contextPath}/template/client/img/${hang_chitiet.imageLink }"
									alt="">
							</div>

							<div class="product-preview">
								<img
									src="${pageContext.request.contextPath}/template/client/img/${hang_chitiet.imageLink }"
									alt="">
							</div>

							<div class="product-preview">
								<img
									src="${pageContext.request.contextPath}/template/client/img/${hang_chitiet.imageLink }"
									alt="">
							</div>

							<div class="product-preview">
								<img
									src="${pageContext.request.contextPath}/template/client/img/${hang_chitiet.imageLink }"
									alt="">
							</div>
						</div>
					</div>
					<!-- /Product main img -->

					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						<div id="product-imgs">
							<div class="product-preview">
								<img
									src="${pageContext.request.contextPath}/template/client/img/${hang_chitiet.imageLink }"
									alt="">
							</div>

							<div class="product-preview">
								<img
									src="${pageContext.request.contextPath}/template/client/img/${hang_chitiet.imageLink }"
									alt="">
							</div>

							<div class="product-preview">
								<img
									src="${pageContext.request.contextPath}/template/client/img/${hang_chitiet.imageLink }"
									alt="">
							</div>

							<div class="product-preview">
								<img
									src="${pageContext.request.contextPath}/template/client/img/${hang_chitiet.imageLink }"
									alt="">
							</div>
						</div>
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">${hang_chitiet.tenHang }</h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<a class="review-link" href="#">10 Review(s) | Add your
									review</a>
							</div>
							<div>
								<h3 class="product-price">
									<fmt:formatNumber type="currency"
										value="${hang_chitiet.donGia }" />
								</h3>
								<c:if test="${hang_chitiet.soLuong < 1 }">
									<span class="product-available">Hết Hàng</span>
								</c:if>
								<c:if test="${hang_chitiet.soLuong > 0 }">
									<span class="product-available">Còn Hàng</span>
								</c:if>
							</div>
							<p>${hang_chitiet.tTThem }</p>


							<div class="add-to-cart">

								<c:if test="${hang_chitiet.soLuong < 1 }">
									<a href="#">
										<button class="add-to-cart-btn">
											<i class="fa fa-shopping-cart"></i> Hết Hàng
										</button>
									</a>
								</c:if>
								<c:if test="${hang_chitiet.soLuong > 0 }">
									<a
										href="${pageContext.request.contextPath}/buy/${hang_chitiet.maHang }">
										<button class="add-to-cart-btn">
											<i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
										</button>
									</a>
								</c:if>
							</div>
						</div>
					</div>
					<!-- /Product details -->
				</c:if>
				<!-- Product main img -->


				<!-- Product tab -->

				<!-- /product tab -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>

</body>
</html>