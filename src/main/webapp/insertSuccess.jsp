<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
font-family: Arial, sans-serif;
background:#f4f4f4;
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}
.container{
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 0 10px rgba(0,0,0,0.2);
text-align:center;
}
h2{
color:green;
}
a{
display:inline-block;
margin-top:20px;
text-decoration:none;
background:#007bff;
color:white;
padding:10px 20px;
border-radius:5px;
}
a:hover{
background:#0056b3;
}
</style>
</head>
<body>
<div class="container"> 
<h2>Correct Inserted Successfully!</h2>
<p>Your contact has been saved to the database.</p>
<a href="index.jsp">Home</a>
<a href="Viewcontact">View contact</a>
</div>
</body>
</html>