<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
<h2 align="center">${Message}</h2>
	<div class="container mt-3">
	<div class="row">

			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Username</th>
						<th scope="col">Gender</th>
						<th scope="col">Address</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					
						<tr>
							<td class="table-plus">${users.id}</td>
							<td>${users.username}</td>
							<td>${users.gender}</td>
							<td>${users.address}</td>
							<td><a href="editUser/${users.id}" class="btn btn-warning">
									Edit </a></td>
							<td><a href="deleteUser/${users.id}"
								class="btn btn-danger"> Delete </a></td>
						</tr>
				
				</tbody>
			</table>
		</div>
		</div>

</body>
</html>