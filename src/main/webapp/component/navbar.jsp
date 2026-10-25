<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="p1.Userbean" %>

<%
Userbean user = (Userbean) session.getAttribute("Userbean");
boolean loggedIn = (user != null);
String var = request.getContextPath();
%>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Phonebook</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Addcontact.jsp">Addcontact</a>
        </li> 
        <li class="nav-item">
          <a class="nav-link" href="<%=var %>/Viewcontact">Viewcontact</a>
        </li>
        
      </ul>
      <div class="ms-auto me-2">
      <%if(!loggedIn){ %>
      <a href="<%=request.getContextPath()%>/Login.jsp" class="btn btn-success">Login</a>
      <a href="<%=request.getContextPath() %>/Register.jsp" class="btn btn-warning">Register</a>
      <%}else{%>
      <span>
      Hello,<%=user.getName()%>
      </span>
      <a href="<%=var%>/logout" class="btn btn-danger">Logout</a>
      <%}%>
      </div>
    </div>
  </div>
</nav>
