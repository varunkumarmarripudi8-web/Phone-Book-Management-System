<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Bootstrap JavaScript Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
<style>
.back-img{
background-image:url('<%=request.getContextPath()%>/img/phone.jpg');
width:100%;
height:83vh;
background-size:cover;
	background-position:center;
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<div class="back-img container-fluid d-flex justify-content-center align-items-center text-primary">
<h1 class="text-danger text-center mt-3 fw-bold">Welcome to phone book app</h1>
</div>
<div class="bg-dark text-center text-white">
<%@ include file="component/footer.jsp" %>
</div>
</body>
</html>