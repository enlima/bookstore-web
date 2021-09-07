<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authors | Alura Bookstore</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
</head>
<body class="container">

	<h1 class="mt-2 text-center">Authors Registration</h1>
	
	<h2 class="text-center">Add Author</h2>
	
	<form action="<c:url value="authors"/>" method="post">
		<div class="form-group">
			<label for="name">Name</label> <input id="name" class="form-control" name="name"> 
			<label for="email">Email</label> <input id="email" class="form-control" name="email" placeholder="name@example.com"> 
			<label for="birthdate">Birthdate</label> <input id="birthdate" class="form-control" name="birthdate" placeholder="dd/mm/yyyy"> 
			<label for="miniResume">Mini Resume</label> <textarea id="miniResume" class="form-control" name="miniResume" rows="2" maxlength="250"></textarea>
		</div>
		
		<div class="d-grid gap-2">
			<input type="submit" value="REGISTER" class="mt-2 btn-primary">
		</div>
	</form>
	
	<form action="<c:url value="/"/>">
		<div class="d-grid gap-2">
			<input type="submit" value="Back to homepage" class="mt-2 btn-outline-primary">
		</div>
	</form>
	
	<h2 class="mt-2 text-center">Authors List</h2>
	
	<table class="table table-hover table-striped table-bordered">
		<thead>
			<tr>
				<th>NAME</th>
				<th>EMAIL</th>
				<th>BIRTHDATE</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${authors}" var="author">
				<tr>
					<td>${author.name}</td>
					<td>${author.email}</td>
					<td>${author.birthdate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
</body>
</html>