<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="p1.contactbean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Bootstrap JavaScript Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<h2 class="text-center text-primary">Contact List</h2>
<table class="table table-striped table-bordered mt-3">
  <thead class="table-dark">
   <tr>
   <th>Id</th>
<th>Name</th>
<th>Email Id</th>
<th>Phone Number</th>
<th>About</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<%
  List<contactbean> list=(List<contactbean>)request.getAttribute("ContactList");
  if(list!=null && !list.isEmpty()){
	  for(contactbean c:list){
		  %>
		  <tr>
		  <td><%=c.getId() %></td>
		  <td><%=c.getName() %></td>
		  <td><%=c.getEmail() %></td>
		  <td><%=c.getPhno() %></td>
		  <td><%=c.getAbt() %></td>
		  <td><a href="editcontact?id=<%=c.getId()%>"class="btn btn-warning btn-sm">Edit</a>
		  <a href="deletecontact?id=<%=c.getId() %>"class="btn btn-danger btn-sm"
		        onclick="return confirm('Are you sure want to delete this contact')">Delete</a></td>
		  </tr>
		 <%
	  }
	  }else{
		 %> 
		 <tr>
		 <td class="text-center text-danger">No Contact Found</td>
		 </tr>
		 <%
	  }
		 %>

</tbody>
</body>
<div>
<a href="index.jsp" class="btn btn-primary">Home</a>
<a href="Addcontact.jsp" class="btn btn-success">Add Contact</a>
</div>
</table>
</html>