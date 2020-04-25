<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- NAVIGATION -->


<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">

			<!-- section title -->
			<div class="col-md-12">
				<div class="section-title">
					<h3 class="title"></h3>
					<div class="section-nav">
						<ul class="section-tab-nav tab-nav">
							<li class="active"><a data-toggle="tab" href="#tabAll">All</a></li>
							<c:forEach items="${loaiHang }" var="lh">
								<li><a data-toggle="tab" href="#${lh.maLoai }">${lh.tenLoai }
								</a></li>
							</c:forEach>

						</ul>
					</div>
				</div>
			</div>
			<!-- /section title -->

			<!-- Products tab & slick -->
			<div class="col-md-12">
				<div class="row">
					<div class="products-tabs">
						<!-- tab -->
						<c:forEach items="${loaiHang}" var="lh" varStatus="i">
							<c:choose>
								<c:when test="${lh.maLoai == 1  }">
									<div id="${lh.maLoai }" class="tab-pane">
										<div class="products-slick" data-nav="#slick-nav-1">
											<c:forEach items="${Loai1 }" var="loai1">
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
															<fmt:formatNumber type="currency"
																value="${loai1.donGia }" />
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
								<c:when test="${lh.maLoai == 2  }">
									<div id="${lh.maLoai }" class="tab-pane">
										<div class="products-slick" data-nav="#slick-nav-1">
											<c:forEach items="${Loai2 }" var="loai2">
												<div class="product">
													<div class="product-img">
														<img
															src="${pageContext.request.contextPath}/template/client/img/${loai2.imageLink }"
															alt="">
														<div class="product-label">
															<span class="sale"></span> <span class="new"></span>
														</div>
													</div>
													<div class="product-body">
														<h3 class="product-name">
															<a
																href="${pageContext.request.contextPath}/chitiet?id=${loai2.maHang}">${loai2.tenHang }</a>
														</h3>
														<h4 class="product-price">
															<fmt:formatNumber type="currency"
																value="${loai2.donGia }" />
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
																	href="${pageContext.request.contextPath}/chitiet?id=${loai2.maHang}"><i
																	class="fa fa-eye"></i><span class="tooltipp">Xem
																		Chi Tiết</span></a>
															</button>

														</div>
													</div>
													<div class="add-to-cart">
														<c:if test="${loai2.soLuong < 1 }">
															<a href="#">
																<button class="add-to-cart-btn">
																	<i class="fa fa-shopping-cart"></i> Hết Hàng
																</button>
															</a>
														</c:if>
														<c:if test="${loai2.soLuong > 0 }">
															<a
																href="${pageContext.request.contextPath}/buy/${loai2.maHang }">
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
								<c:when test="${lh.maLoai == 3  }">
									<div id="${lh.maLoai }" class="tab-pane">
										<div class="products-slick" data-nav="#slick-nav-1">
											<c:forEach items="${Loai3 }" var="loai3">
												<div class="product">
													<div class="product-img">
														<img
															src="${pageContext.request.contextPath}/template/client/img/${loai3.imageLink }"
															alt="">
														<div class="product-label">
															<span class="sale"></span> <span class="new"></span>
														</div>
													</div>
													<div class="product-body">
														<h3 class="product-name">
															<a
																href="${pageContext.request.contextPath}/chitiet?id=${loai3.maHang}">${loai3.tenHang }</a>
														</h3>
														<h4 class="product-price">
															<fmt:formatNumber type="currency"
																value="${loai3.donGia }" />
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
																	href="${pageContext.request.contextPath}/chitiet?id=${loai3.maHang}"><i
																	class="fa fa-eye"></i><span class="tooltipp">Xem
																		Chi Tiết</span></a>
															</button>

														</div>
													</div>
													<div class="add-to-cart">
														<c:if test="${loai3.soLuong < 1 }">
															<a href="#">
																<button class="add-to-cart-btn">
																	<i class="fa fa-shopping-cart"></i> Hết Hàng
																</button>
															</a>
														</c:if>
														<c:if test="${loai3.soLuong > 0 }">
															<a
																href="${pageContext.request.contextPath}/buy/${loai3.maHang }">
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
								<c:when test="${lh.maLoai == 4  }">
									<div id="${lh.maLoai }" class="tab-pane">
										<div class="products-slick" data-nav="#slick-nav-1">
											<c:forEach items="${Loai4 }" var="loai4">
												<div class="product">
													<div class="product-img">
														<img
															src="${pageContext.request.contextPath}/template/client/img/${loai4.imageLink }"
															alt="">
														<div class="product-label">
															<span class="sale"></span> <span class="new"></span>
														</div>
													</div>
													<div class="product-body">
														<h3 class="product-name">
															<a
																href="${pageContext.request.contextPath}/chitiet?id=${loai4.maHang}">${loai4.tenHang }</a>
														</h3>
														<h4 class="product-price">
															<fmt:formatNumber type="currency"
																value="${loai4.donGia }" />
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
																	href="${pageContext.request.contextPath}/chitiet?id=${loai4.maHang}"><i
																	class="fa fa-eye"></i><span class="tooltipp">Xem
																		Chi Tiết</span></a>
															</button>

														</div>
													</div>
													<div class="add-to-cart">
														<c:if test="${loai4.soLuong < 1 }">
															<a href="#">
																<button class="add-to-cart-btn">
																	<i class="fa fa-shopping-cart"></i> Hết Hàng
																</button>
															</a>
														</c:if>
														<c:if test="${loai4.soLuong > 0 }">
															<a
																href="${pageContext.request.contextPath}/buy/${loai4.maHang }">
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
								<c:when test="${lh.maLoai == 5  }">
									<div id="${lh.maLoai }" class="tab-pane">
										<div class="products-slick" data-nav="#slick-nav-1">
											<c:forEach items="${Loai5 }" var="loai5">
												<div class="product">
													<div class="product-img">
														<img
															src="${pageContext.request.contextPath}/template/client/img/${loai5.imageLink }"
															alt="">
														<div class="product-label">
															<span class="sale"></span> <span class="new"></span>
														</div>
													</div>
													<div class="product-body">
														<h3 class="product-name">
															<a
																href="${pageContext.request.contextPath}/chitiet?id=${loai5.maHang}">${loai5.tenHang }</a>
														</h3>
														<h4 class="product-price">
															<fmt:formatNumber type="currency"
																value="${loai5.donGia }" />
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
																	href="${pageContext.request.contextPath}/chitiet?id=${loai5.maHang}"><i
																	class="fa fa-eye"></i><span class="tooltipp">Xem
																		Chi Tiết</span></a>
															</button>

														</div>
													</div>
													<div class="add-to-cart">
														<c:if test="${loai5.soLuong < 1 }">
															<a href="#">
																<button class="add-to-cart-btn">
																	<i class="fa fa-shopping-cart"></i> Hết Hàng
																</button>
															</a>
														</c:if>
														<c:if test="${loai5.soLuong > 0 }">
															<a
																href="${pageContext.request.contextPath}/buy/${loai5.maHang }">
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
								<c:otherwise>


									<div id="tabAll" class="tab-pane active">
										<div class="products-slick" data-nav="#slick-nav-7">
											<c:forEach items="${hang }" var="h">
												<div class="product">
													<div class="product-img">
														<img
															src="${pageContext.request.contextPath}/template/client/img/${h.imageLink }"
															alt="">
														<div class="product-label">
															<span class="sale"></span> <span class="new"></span>
														</div>
													</div>
													<div class="product-body">
														<h3 class="product-name">
															<a
																href="${pageContext.request.contextPath}/chitiet?id=${h.maHang}">${h.tenHang }</a>
														</h3>
														<h4 class="product-price">
															<fmt:formatNumber type="currency" value="${h.donGia }" />
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
																	href="${pageContext.request.contextPath}/chitiet?id=${h.maHang}"><i
																	class="fa fa-eye"></i><span class="tooltipp">Xem
																		Chi Tiết</span></a>
															</button>

														</div>
													</div>

													<div class="add-to-cart">
														<c:if test="${h.soLuong < 1 }">
															<a href="#">
																<button class="add-to-cart-btn">
																	<i class="fa fa-shopping-cart"></i> Hết Hàng
																</button>
															</a>
														</c:if>
														<c:if test="${h.soLuong > 0 }">
															<a
																href="${pageContext.request.contextPath}/buy/${h.maHang }">
																<button class="add-to-cart-btn">
																	<i class="fa fa-shopping-cart"></i> Thêm Vào Giỏ Hàng
																</button>
															</a>
														</c:if>
													</div>
												</div>
											</c:forEach>

										</div>
										<div id="slick-nav-7" class="products-slick-nav"></div>
									</div>

								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
				</div>
			</div>

		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->

<!-- HOT DEAL SECTION -->
<div id="hot-deal" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<div class="hot-deal">
					<ul class="hot-deal-countdown">
						<li>
							<div>
								<h3>02</h3>
								<span>Days</span>
							</div>
						</li>
						<li>
							<div>
								<h3>10</h3>
								<span>Hours</span>
							</div>
						</li>
						<li>
							<div>
								<h3>34</h3>
								<span>Mins</span>
							</div>
						</li>
						<li>
							<div>
								<h3>60</h3>
								<span>Secs</span>
							</div>
						</li>
					</ul>
					<h2 class="text-uppercase">hot deal this week</h2>
					<p>New Collection Up to 50% OFF</p>
					<a class="primary-btn cta-btn" href="#">Shop now</a>
				</div>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /HOT DEAL SECTION -->




<!-- NEWSLETTER -->
<div id="newsletter" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<div class="newsletter">
					<p>
						Sign Up for the <strong>NEWSLETTER</strong>
					</p>
					<form>
						<input class="input" type="email" placeholder="Enter Your Email">
						<button class="newsletter-btn">
							<i class="fa fa-envelope"></i> Subscribe
						</button>
					</form>
					<ul class="newsletter-follow">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /NEWSLETTER -->

</body>