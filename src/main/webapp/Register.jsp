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
</head>
<body>
<div class="mt-5 d-flex justify-content-center align-text-center">
<div class="card p-4" style="width:400px;">
<h3 class="text-success text-center">Registration page</h3>
<form action="register" method="post">
<div>
<label>Full Name</label>
<input type="text" name="name" placeholder="Enter your Full Name" class="form-control">
</div>
<div>
<label>Email</label>
<input type="email" name="email" placeholder="Enter your Email" class="form-control">
</div>
<div>
<label>Password</label>
<input type="password" name="password" placeholder="Enter your password" class="form-control">
</div>
<div class="text-center mt-2 ">
<button type="submit" class="btn btn-primary w-100">Register</button>
</div>
</form>
</div>
</div>
</body>
</html>