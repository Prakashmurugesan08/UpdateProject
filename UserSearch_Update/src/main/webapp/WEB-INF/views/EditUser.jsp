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

		<h1>Edit User Detail</h1>
		<form action="updateUser" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="id">Id</label> <input type="text"
							value="${users.id}" class="form-control" id="id" name="id"
							readonly="readonly">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Name</label> 
						<input type="text"
							value="${users.username }" class="form-control" id="username"
							name="username" placeholder="Enter Username">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="gender">Gender</label> <input type="text"
							value="${users.gender }" class="form-control"
							id="gender" name="gender"
							placeholder="Enter Gender">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="address">Address</label>
						<textarea class="form-control" id="address" name="address"
							rows="5" placeholder="Enter Address"> ${users.address } </textarea>
					</div>
				</div>
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>
</body>
</html>