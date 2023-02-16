<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body bgcolor="pink">
	<center>
<h1>User Details</h1>

<table border="1" >
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>Password</th>
		<th>Gender</th>
		<th>Address</th>
		<th>Delete</th>
		<th>Edit</th>
		
	</tr>
	<tr>
	
	<c:forEach var="user" items="${users}">
	<tr>
		<td>${user.id}</td>
		<td>${user.name}</td>
		<td>${user.email}</td>
		<td>${user.password}</td>
		<td>${user.gender}</td>
		<td>${user.address}</td>
		<td><a href="deleteuser/${user.id }">Delete</a></td>
		<td><a href="updateuser/${user.id }">Edit</a></td>
	</tr>
	</c:forEach>
	<br/>
	</center>
</table>
	
</body>