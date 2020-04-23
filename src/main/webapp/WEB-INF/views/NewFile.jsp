<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${loaiHang}" var="lh" varStatus="i">
							<c:choose>
								
								<c:otherwise>
								
								</c:otherwise>
							</c:choose>
						</c:forEach>
								
<c:when test="${lh.maLoai == 1  }">
									<!--  bh kiểm tra từng loại hàng  -->
									<!-- laoij hang bang 1 thi load tivi  -->
									<div id="${lh.maLoai }" class="tab-pane">
										<!-- bo cai active di -->
										<div class="products-slick" data-nav="#slick-nav-1">
											<c:forEach items="${lh.tenLoai }" var="loai1">
												<div class="product">
													<div class="product-img">
														<img
															src="${pageContext.request.contextPath}/template/client/img/${loai1.imageLink }"
															alt="">
														<div class="product-label">
															<span class="sale"></span> <span class="new"></span>
														</div>
													</div>
													<div class="product-body">
														<h3 class="product-name">
															<a
																href="${pageContext.request.contextPath}/chitiet?id=${loai1.maHang}">${loai1.tenHang }</a>
														</h3>
														<h4 class="product-price">
															<fmt:formatNumber type="currency" value="${loai1.donGia }" />
														</h4>
														<div class="product-rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="product-btns">
															<button class="add-to-wishlist">
																<i class="fa fa-heart-o"></i><span class="tooltipp">add
																	to wishlist</span>
															</button>

															<button class="quick-view">
																<a
																	href="${pageContext.request.contextPath}/chitiet?id=${loai1.maHang}"><i
																	class="fa fa-eye"></i><span class="tooltipp">Xem
																		Chi Tiết</span></a>
															</button>

														</div>
													</div>
													<div class="add-to-cart">
														<c:if test="${loai1.soLuong < 1 }">
															<a href="#">
																<button class="add-to-cart-btn">
																	<i class="fa fa-shopping-cart"></i> Hết Hàng
																</button>
															</a>
														</c:if>
														<c:if test="${loai1.soLuong > 0 }">
															<a
																href="${pageContext.request.contextPath}/buy/${loai1.maHang }">
																<button class="add-to-cart-btn">
																	<i class="fa fa-shopping-cart"></i> Thêm Vào Giỏ Hàng
																</button>
															</a>
														</c:if>
													</div>
												</div>
											</c:forEach>
										</div>
										<div id="slick-nav-1" class="products-slick-nav"></div>
									</div>

								</c:when>

<!-- SECTION -->
  <div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row"></div>

		<div class="col-md-4 col-xs-6">
			<div class="section-title">
				<h4 class="title">LG</h4>
				<div class="section-nav">
					<div id="slick-nav-18" class="products-slick-nav"></div>
				</div>
			</div>

			<div class="products-widget-slick" data-nav="#slick-nav-18">
				<c:forEach items="${hangLG }" var="lg">
					<c:set var="sl" value="${sl + 1 }"></c:set>
				</c:forEach>
				<c:forEach var="i" begin="0" end="${sl/3 }">
					<div>
						<c:forEach items="${hangLG }" var="lg" begin="${i*3 }"
							end="${i*3+2 }">

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="${pageContext.request.contextPath}/template/client/img/${lg.imageLink }" alt="">
								</div>
								<div class="product-body">
								<p class="product-category"></p>
									<h3 class="product-name">
										<a href="${pageContext.request.contextPath}/chitiet?id=${lg.maHang}">${lg.tenHang }</a>
									</h3>
									<h4 class="product-price">
										<fmt:formatNumber type="currency" value="${lg.donGia }" />
									</h4>
								</div>
							</div>

						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="clearfix visible-sm visible-xs"></div>

		<div class="col-md-4 col-xs-6">
			<div class="section-title">
				<h4 class="title">SAMSUNG</h4>
				<div class="section-nav">
					<div id="slick-nav-19" class="products-slick-nav"></div>
				</div>
			</div>

			<div class="products-widget-slick" data-nav="#slick-nav-19">
				<c:forEach items="${hangSAMSUNG }" var="ss">
					<c:set var="sl" value="${sl + 1 }"></c:set>
				</c:forEach>
				<c:forEach var="i" begin="0" end="${sl/3 }">
					<div>
						<c:forEach items="${hangSAMSUNG }" var="ss" begin="${i*3 }"
							end="${i*3+2 }">

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="${pageContext.request.contextPath}/template/client/img/${ss.imageLink }" alt="">
								</div>
								<div class="product-body">
								<p class="product-category"></p>
									<h3 class="product-name">
										<a href="${pageContext.request.contextPath}/chitiet?id=${ss.maHang}">${ss.tenHang }</a>
									</h3>
									<h4 class="product-price">
										<fmt:formatNumber type="currency" value="${ss.donGia }" />
									</h4>
								</div>
							</div>

						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="clearfix visible-sm visible-xs"></div>

		<div class="col-md-4 col-xs-6">
			<div class="section-title">
				<h4 class="title">IPHONE</h4>
				<div class="section-nav">
					<div id="slick-nav-20" class="products-slick-nav"></div>
				</div>
			</div>

			<div class="products-widget-slick" data-nav="#slick-nav-20">
				<c:forEach items="${hangIPHONE }" var="ip">
					<c:set var="sl" value="${sl + 1 }"></c:set>
				</c:forEach>
				<c:forEach var="i" begin="0" end="${sl/3 }">
					<div>
						<c:forEach items="${hangIPHONE }" var="ip" begin="${i*3 }"
							end="${i*3+2 }">

							<!-- product widget -->
							<div class="product-widget">
								<div class="product-img">
									<img src="${pageContext.request.contextPath}/template/client/img/${ip.imageLink }" alt="">
								</div>
								<div class="product-body">
								<p class="product-category"></p>
									<h3 class="product-name">
										<a href="${pageContext.request.contextPath}/chitiet?id=${ip.maHang}">${ip.tenHang }</a>
									</h3>
									<h4 class="product-price">
										<fmt:formatNumber type="currency" value="${ip.donGia }" />
									</h4>
								</div>
							</div>

						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- /row -->
</div>
<!-- /container -->
</div>
<!-- /SECTION -->
</body>
</html>