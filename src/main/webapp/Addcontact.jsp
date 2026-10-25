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
<div  class="card p-4"style="width:400px">
<h3 class="text-success text-center">Add Contact Page</h3>
<div class="mb-3">
<form action="addcontact" method="post">
<label class="form-label">Full Name</label>
<input type="text" name="name" placeholder="Enter your Full Name" class="form-control">
</div>
<div class="mb-3">
<label class="form-label">Email</label>
<input type="text" name="email" placeholder="Enter your E-mail" class="form-control">
</div>
<div>
<label class="form-label">Phone Number</label>
<input type="text" name="phno" placeholder="Enter your phone Number" class="form-control">
</div>
<div class="mb-3">
<label class="form-label">About</label>
<textarea  name="abt" placeholder="Enter About here..." class="form-control"></textarea>
</div>
<div>
<button type="submit" class="btn btn-primary w-100" onclick="alert('contact Saved')">save contact</button>
</div>
</form>
</div>
</div>
</body>
</html>