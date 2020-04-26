<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Quản Lý Bán Hàng</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/admin/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bbootstrap 4 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/admin/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/admin/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/admin/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/admin/plugins/summernote/summernote-bs4.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light"
			style="background-color: darkslategrey;">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#"><i class="fas fa-bars"></i></a></li>

			</ul>

			<!-- SEARCH FORM -->
			<form class="form-inline ml-3">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar" type="search"
						placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a
					href="<?php echo base_url()?>user/load_tt_user/"> <img src="#"
						alt="" /> <span class="hidden-xs">${checkUser.hoTen}</span>
				</a>
				<li><a id="logout_btn" href="${pageContext.request.contextPath}/logout" data-toggle="control-sidebar"><i
						style='margin-left: 10px; margin-right: 10px; font-size: 18px'
						class="fas fa-sign-out-alt"></i></a></li>
				</li>

			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="${pageContext.request.contextPath}/" class="brand-link"> <img src="${pageContext.request.contextPath}/template/client/img/logo.png" alt="Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light"> VegetableShop</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="${pageContext.request.contextPath}/template/client/img/${checkUser.image}"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">${checkUser.hoTen}</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item has-treeview"><a href="${pageContext.request.contextPath}/admin/hang"
							class="nav-link"> <i class="nav-icon fas fa-copy"></i>
								<p>
									Quản Lý Hàng <i class="fas fa-angle-left right"> </i>
								</p>
						</a></li>
						<li class="nav-item has-treeview"><a href="#"
							class="nav-link"> <i class="nav-icon fas fa-edit"></i>
								<p>
									Quản Lý Loại Hàng <i class="fas fa-angle-left right"></i>
								</p>
						</a></li>
						<li class="nav-item has-treeview"><a href="${pageContext.request.contextPath}/admin/user"
							class="nav-link"> <i class="nav-icon fas fa-users"></i>
								<p>
									Quản Lý Người Dùng <i class="fas fa-angle-left right"></i>
								</p>
						</a></li>
						<li class="nav-item has-treeview"><a href="${pageContext.request.contextPath}/admin/user"
							class="nav-link"> <i class="nav-icon far fa-clipboard"></i>
								<p>
									Quản Lý Maketing <i class="fas fa-angle-left right"></i>
								</p>
						</a></li>
						<li class="nav-item has-treeview"><a href="${pageContext.request.contextPath}/admin/user"
							class="nav-link"> <i class="nav-icon far fa-file-alt"></i>
								<p>
									Báo Cáo Thống Kê <i class="fas fa-angle-left right"></i>
								</p>
						</a></li>
						<li class="nav-item has-treeview"><a href="${pageContext.request.contextPath}/admin/donhang/xulydonhang"
							class="nav-link"> <i class="nav-icon fas fa-file"></i>
								<p>
									Quản Đơn Hàng <i class="fas fa-angle-left right"></i>
								</p>
						</a>
						<ul class="nav nav-treeview" style="display: block;">
								<li class="nav-item"><a href="${pageContext.request.contextPath}/admin/donhang/xulydonhang" class="nav-link"> <i
										class="far fa-circle nav-icon"></i>
										<p>Xử Lý Hóa Đơn</p>
								</a></li>
								<li class="nav-item"><a href="${pageContext.request.contextPath}/admin/donhang/chothanhtoan" class="nav-link"> <i
										class="far fa-circle nav-icon"></i>
										<p>Chờ Thanh Toán</p>
								</a></li>
								<li class="nav-item"><a href="${pageContext.request.contextPath}/admin/donhang/dahoanthanh" class="nav-link"> <i
										class="far fa-circle nav-icon"></i>
										<p>Đã Hoàn Thành</p>
								</a></li>
								<li class="nav-item"><a href="${pageContext.request.contextPath}/admin/donhang/dahuy" class="nav-link"> <i
										class="far fa-circle nav-icon"></i>
										<p>Đã Hủy</p>
								</a></li>
							</ul></li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->

		<dec:body></dec:body>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong>Copyright &copy; 2014-2019 <a
				href="http://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.0.2-pre
			</div>
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/moment/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="${pageContext.request.contextPath}/template/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/template/admin/dist/js/adminlte.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script
		src="${pageContext.request.contextPath}/template/admin/dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script
		src="${pageContext.request.contextPath}/template/admin/dist/js/demo.js"></script>
</body>
</html>
