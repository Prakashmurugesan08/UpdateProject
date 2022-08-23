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
		<form action="insertUser" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Username</label> <input type="text"
							class="form-control" id="username" name="username"
							placeholder="Enter UserName">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="gender">Gender</label> <input
							type="text" class="form-control" id="gender"
							name="gender" placeholder="Enter gender">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="address">Address</label>
						<textarea class="form-control" id="address" name="address"
							rows="5" placeholder="Enter Address"> </textarea>
					</div>
				</div>
			</div>

			<a href="${pageContext.request.contextPath }/"
				class="btn btn-warning"> Back </a>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>

</body>
</html>