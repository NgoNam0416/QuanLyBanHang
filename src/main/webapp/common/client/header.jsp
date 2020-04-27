<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- HEADER -->
<header>
	<!-- TOP HEADER -->
	<div id="top-header">
		<div class="container">
			<ul class="header-links pull-left">
				<li><a href="#"><i class="fa fa-phone"></i> +0979789999</a></li>
				<li><a href="#"><i class="fa fa-envelope-o"></i>
						ngodinhnam0416@email.com</a></li>
				<li><a href="#"><i class="fa fa-map-marker"></i> Ngô Mây-Quy Nhơn</a></li>
			</ul>
			<ul class="header-links pull-right">
				<c:if test="${checkUser == null }">
					<li>
						<div class="dropdown">
							<a class="dropdown-toggle" id="login" data-toggle="dropdown"
								aria-expanded="true"> <i class="fa fa-user-o"
								visibility="hidden"></i>Đăng Nhập

							</a>
							<div class="cart-dropdown"style="width: 300px; max-height: 190px;overflow-y: visible;margin-bottom: 5px;>
								<div class="cart-list"    ">
									<form action="${pageContext.request.contextPath}/login"
										method="post" name="formdangnhap" onsubmit="return myFunction()">
										<h3>Đăng Nhập</h3>
										<div class="input-group" style="width:250px;">
											<input type="text" name="userName" id="userName" class="form-control"
												placeholder="Username" required>
											<div class="input-group-append">
												
											</div>
										</div>
										<div class="input-group "style="width:250px;padding-top:5px;">
											<input type="password" name="passWord" id="passWord" class="form-control"
												placeholder="Password" required>
											<div class="input-group-append">
												
											</div>
										</div>
										<div class="row">
											<div class="col-4" style="padding-left: 15px;padding-top:5px;">
											<a href="${pageContext.request.contextPath}">
												<button type="submit" name="submit" style="width: 40%;"
													class="btn btn-primary btn-block">Đăng Nhập</button></a>
											</div>
											<!-- /.col -->
										</div>
										<div >
										<a style="color: #2B2D42;" href="${pageContext.request.contextPath}/dangky" class="text-center">Đăng ký thành viên</a>
										</div>
										 <!-- kiểm tra trung ten dang nhap -->
										<c:if test="${loginF != null }">
											<script type="text/javascript">									
																								
													alert("Tên đăng nhập hoặc mật khẩu không đúng");								
												
											</script>	
										</c:if>
									</form>
									</body>

								</div>
							</div>
						</div> <!-- /Cart -->
					</li>
				</c:if>
					
<c:if test="${checkUser != null }">
				<li><a href="#"><i class="fa fa-user-o"></i> My Account</a></li>
				<li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-user-o"></i> Logout</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	<!-- /TOP HEADER -->

	<!-- MAIN HEADER -->
	<div id="header" style="background-color:#56b80b;">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- LOGO -->
				<div class="col-md-3">
					<div class="header-logo">
						<a href="${pageContext.request.contextPath}" class="logo"> <img style="height:100px"
							src="${pageContext.request.contextPath}/template/client/img/logo.png"
							alt="">
						</a>
					</div>
				</div>
				<!-- /LOGO -->

				<!-- SEARCH BAR -->
				<div class="col-md-6">
					<div class="header-search">
						<form action="${pageContext.request.contextPath}/timkiem" method="get">
							<input class="input" name="tukhoa" placeholder="Search here">
							<button class="search-btn">Tìm kiếm</button>
						</form>
					</div>
				</div>
				<!-- /SEARCH BAR -->

				<!-- ACCOUNT -->
				<div class="col-md-3 clearfix">
					<div class="header-ctn">
						<!-- Wishlist -->
						<div>
							<a href="#"> <i class="fa fa-heart-o"></i> <span>Your
									Wishlist</span>
								<div class="qty">2</div>
							</a>
						</div>
						<c:set var="sl" value="0"></c:set>
						<!-- /Wishlist -->
						<c:forEach var="item" items="${sessionScope.cart }">
							<c:set var="sl" value="${sl + 1 }"></c:set>
						</c:forEach>
						<!-- Cart -->
						<div class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown"
								aria-expanded="true"> <i class="fa fa-shopping-cart"></i> <span>Giỏ Hàng Của Bạn</span>
								<div class="qty">${sl }</div>
							</a>
							<div class="cart-dropdown">
								<div class="cart-list">
									<c:if test="${sl == 0}">
										<h4>không có sản phẩm trong giỏ hàng vui lòng hãy mua thêm!</h4>
									</c:if>
									<c:forEach var="item" items="${sessionScope.cart }">
										<c:set var="total"
											value="${total + item.hang.donGia * item.soLuong }"></c:set>
										<div class="product-widget">
											<div class="product-img">
												<img
													src="${pageContext.request.contextPath}/template/client/img/${item.hang.imageLink }"
													alt="">
											</div>
											<div class="product-body">
												<h3 class="product-name">
													<a href="#">${item.hang.tenHang }</a>
												</h3>
												<h4 class="product-price">
													<span class="qty">${item.soLuong }x</span>
													<fmt:formatNumber type="currency"
														value="${item.hang.donGia }" />
												</h4>
											</div>
											<a
												href="${pageContext.request.contextPath}/remove/${item.hang.maHang }"
												onclick="return confirm('Bạn có muốn xóa khỏi giỏ hàng?')"><button
													class="delete">
													<i class="fa fa-close"></i>
												</button></a>

										</div>
									</c:forEach>


								</div>
								<div class="cart-summary">
									<small>${sl } mặt hàng</small>
									<h5>
										TỔNG TIỀN:
										<fmt:formatNumber type="currency" value="${total }" />
									</h5>
								</div>
								<div class="cart-btns">
								<c:if test="${sl == 0}">
										<a href="#" onclick="return alert('Chưa có hàng trong giỏ hãy mua một món!')">Xem giỏ
										hàng</a>
									</c:if>
									<c:if test="${sl != 0}">
										<a href="${pageContext.request.contextPath}/cart">Xem giỏ
										hàng</a>
									</c:if>
									 <c:if test="${sl != 0}">
										<a href="${pageContext.request.contextPath}/thanhtoan">Thanh
										toán <i class="fa fa-arrow-circle-right"></i>
									</a>
									</c:if>
									 <c:if test="${sl == 0}">
										<a href="#" onclick="return alert('Chưa có hàng trong giỏ hãy mua một món!')">Thanh
										toán <i class="fa fa-arrow-circle-right"></i>
									</a>
									</c:if>
									
								</div>
							</div>
						</div>
						<!-- /Cart -->

						<!-- Menu Toogle -->
						<div class="menu-toggle">
							<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
							</a>
						</div>
						<!-- /Menu Toogle -->
					</div>
				</div>
				<!-- /ACCOUNT -->
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</div>
	<!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->
<nav id="navigation">
	<!-- container -->
	<div class="container">
		<!-- responsive-nav -->
		<div id="responsive-nav">
			<!-- NAV -->
			<ul class="main-nav nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath}">Trang Chủ</a></li>
				<li><a href="#">Sản Phẩm </a></li>
				<li><a href="#">Giới Thiệu</a></li>
				<li><a href="#">Liên Hệ</a></li>
				
			</ul>
			<!-- /NAV -->
		</div>
		<!-- /responsive-nav -->
	</div>
	<!-- /container -->
</nav>
<!-- /NAVIGATION -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img
							src="${pageContext.request.contextPath}/template/client/img/category-2.jpg"
							alt="">
					</div>
					<div class="shop-body">
						<h3>
							Trái Cây
						</h3>
						<a data-toggle="tab" href="#2" class="cta-btn">Shop now <i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->

			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img
							src="${pageContext.request.contextPath}/template/client/img/category-2.jpg"
							alt="">
					</div>
					<div class="shop-body">
						<h3>
							Trái Cây
						</h3>
						<a data-toggle="tab" href="#3" class="cta-btn">Shop now <i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->

			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img
							src="${pageContext.request.contextPath}/template/client/img/category-3.jpg"
							alt="">
					</div>
					<div class="shop-body">
						<h3>
							Nước Ép
						</h3>
						<a data-toggle="tab" href="#1" class="cta-btn">Shop now <i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->