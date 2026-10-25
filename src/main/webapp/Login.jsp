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
<h3 class="text-success text-center">Login Page</h3>
 <%
        String error = (String) request.getAttribute("error");

        if(error != null) {
        %>

            <div class="alert alert-danger text-center">
                <%= error %>
            </div>

        <%
        }
        %>
<form action="login" method="post">
<div>
<label>Email</label>
<input type="email" name="email" placeholder="Enter your email" class="form-control">
</div>
<div>
<label>Password</label>
<input type="password" name="password"placeholder="Enter password" class="form-control">
</div>
<div class="text-center mt-2 ">
<button type="submit" class="btn btn-primary w-100">Login</button>
</div>
</form>
</div>
</div>
</body>
</html>