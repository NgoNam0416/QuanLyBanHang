<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${tkh ==null }">
	<div>
		<h3>Không có hàng cần tìm</h3>
	</div>
</c:if>
<c:if test="${tkh !=null }">
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="products-tabs">
							<div class="products-slick" data-nav="#slick-nav-1">
								<c:forEach items="${tkh }" var="tkh">
									<div class="product">
										<div class="product-img">
											<img
												src="${pageContext.request.contextPath}/template/client/img/${tkh.imageLink }"
												alt="">
											<div class="product-label">
												<span class="sale"></span> <span class="new"></span>
											</div>
										</div>
										<div class="product-body">
											<h3 class="product-name">
												<a
													href="${pageContext.request.contextPath}/chitiet?id=${tkh.maHang}">${tkh.tenHang }</a>
											</h3>
											<h4 class="product-price">
												<fmt:formatNumber type="currency" value="${tkh.donGia }" />
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
														href="${pageContext.request.contextPath}/chitiet?id=${tkh.maHang}"><i
														class="fa fa-eye"></i><span class="tooltipp">Xem
															Chi Tiết</span></a>
												</button>

											</div>
										</div>
										<div class="add-to-cart">
											<c:if test="${tkh.soLuongHang < 1 }">
												<a href="#">
													<button class="add-to-cart-btn">
														<i class="fa fa-shopping-cart"></i> Hết Hàng
													</button>
												</a>
											</c:if>
											<c:if test="${tkh.soLuongHang > 0 }">
												<a
													href="${pageContext.request.contextPath}/buy/${tkh.maHang }">
													<button class="add-to-cart-btn">
														<i class="fa fa-shopping-cart"></i> Thêm Vào Giỏ Hàng
													</button>
												</a>
											</c:if>
										</div>
									</div>
								</c:forEach>
								<div id="slick-nav-1" class="products-slick-nav"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:if>