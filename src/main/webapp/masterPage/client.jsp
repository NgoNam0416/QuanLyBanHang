<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop Điện Tử</title>
<meta charset="utf-8">
<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/template/client/css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/template/client/css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/template/client/css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/template/client/css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/template/client/css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/template/client/css/style.css"/>
</head>
<body>
	<%@include file="/common/client/header.jsp" %>
	
	<dec:body></dec:body>
	<%@include file="/common/client/footer.jsp" %>
	<script
	src="${pageContext.request.contextPath}/template/client/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/template/client/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/template/client/js/slick.min.js"></script>
<script
	src="${pageContext.request.contextPath}/template/client/js/nouislider.min.js"></script>
<script
	src="${pageContext.request.contextPath}/template/client/js/jquery.zoom.min.js"></script>
<script
	src="${pageContext.request.contextPath}/template/client/js/main.js"></script>
</body>
</html>