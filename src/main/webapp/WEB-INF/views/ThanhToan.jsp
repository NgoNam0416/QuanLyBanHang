<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form method="post"  id="form-addhang" action="${pageContext.request.contextPath}/thanhtoan/hoantat">
<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-7">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">Thông tin giao hàng</h3>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="tennguoinhan" placeholder="Tên người nhận" required>
							</div>
							<div class="form-group">
								<input class="input" type="email" name="email" placeholder="Email" required>
							</div>
							<div class="form-group">
								<input class="input" type="tel" name="sdt" placeholder="Số điện thoại" required>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="tinhthanhpho" placeholder="Tỉnh/Thành Phố" required>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="quanhuyen" placeholder="Quận/Huyện" required>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="phuongxa" placeholder="Phường/Xã" required>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="diachinhan" placeholder="Địa chỉ nhận hàng" required>
							</div>
							
						</div>
						<!-- /Billing Details -->


						<!-- Order notes -->
						<div class="order-notes">
							<textarea class="input" name="ghichu" placeholder="Ghi chú" required></textarea>
						</div>
						<!-- /Order notes -->
					</div>

					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">Đơn hàng</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div><strong>Sản Phẩm</strong></div>
								<div><strong>Đơn Giá</strong></div>
							</div>
							<div class="order-products">
							<c:forEach var="item" items="${sessionScope.cart }">
										<c:set var="total"
											value="${total + item.hang.donGia * item.soLuong }"></c:set>
								<div class="order-col">
									<div>${item.soLuong }x ${item.hang.tenHang }</div>
									<div><fmt:formatNumber type="currency" value="${item.hang.donGia }" /></div>
								</div>
								</c:forEach>
							</div>
							<div class="order-col">
								<div>Shiping</div>
								<div><strong>FREE</strong></div>
							</div>
							<div class="order-col">
								<div><strong>Tổng Tiền</strong></div>
								<div><strong class="order-total"><fmt:formatNumber type="currency" value="${total }" /></strong></div>
							</div>
						</div>
						<button type="submit" name="submit" class="btn btn-success float-left" "> Hoàn thành</button>
						
					</div>
					<!-- /Order Details -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
</form>
</body>
</html>