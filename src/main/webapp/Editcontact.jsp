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
<%@ page import="p1.contactbean" %>
<%
  contactbean c=(contactbean)request.getAttribute("contact");
%>
<div class="container-fluid mt-5 d-flex justify-content-center aline-items-center">
<div class="card p-4" style="width:400px">
<h2 class="text-center text-primary">Edit Contact Page</h2>
<form action="updatecontact" method="post">
<label>Id</label>
<input type="hidden" name="id" placeholder="Enter your Id" value="<%=c.getId() %>"class="form-control">
<label> Full Name</label>
<input type="text" name="name" placeholder="Enter your Full Name" value="<%=c.getName() %>" class="form-control">
<label>Email</label>
<input type="text" name="email" placeholder="Enter your Email" value="<%=c.getEmail()%>"class="form-control">
<label>Phone Number</label>
<input type="text" name="phno" placeholder="Enter your Phone Number" value="<%=c.getPhno()%>"class="form-control">
<label>About</label>
<input type="text" name="abt" placeholder="About ....." value="<%=c.getAbt()%>"class="form-control">

<button type="submit" class="mt-2 btn btn-success ">Update Contact </button>
</form>
</div>
</div>
</body>
</html>