<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<title>Insert title here</title>
</head>
<body>
<div class="container mt-3">

		<h1>Add User Form</h1>
		<a href="addUser" class="btn btn-primary"> Add User </a>
		<a href="searchUser" class="btn btn-primary"> Search User </a>
		<div class="row">

			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">UserName</th>
						<th scope="col">Gender</th>
						<th scope="col">Address</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="usr" items="${users}">
						<tr>
							<td class="table-plus">${usr.id}</td>
							<td>${usr.username}</td>
							<td>${usr.gender}</td>
							<td>${usr.address}</td>
							<td><a href="editUser/${usr.id}" class="btn btn-warning">
									Edit </a></td>
							<td><a href="deleteUser/${usr.id}"
								class="btn btn-danger"> Delete </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>