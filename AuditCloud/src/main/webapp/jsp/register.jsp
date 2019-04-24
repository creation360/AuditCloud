<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Audit Cloud</title>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 11 Feb 2013 16:00:00 GMT">
<link rel="shortcut icon" type="image/png" href="/images/favicon.ico" />
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="webjars/bootstrap/4.3.1/css/bootstrap.css" rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="#" class="navbar-left"><img
				style="max-width: 250px; margin-top: -7px;"
				src="resources/images/ac-logo-x2-v2.png" /></a>
				&emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp;<a
				class="navbar-brand" href="home.jsp">Home</a>
		</div>
	</div>
	</nav>
	<div class="jumbotron vertical-center" style="background: white">
		<div class="container">
			<form:form id="regForm" modelAttribute="user"
				action="registerProcess" method="post">

				<table align="center">
					<tr>
						<td><form:label path="email">Email</form:label></td>
						<td><form:input path="email" name="email" id="email" /></td>
					</tr>
					<tr>
						<td><form:label path="password">Password</form:label></td>
						<td><form:password path="password" name="password"
								id="password" /></td>
					</tr>
					<tr>
						<td><form:label path="firstname">FirstName</form:label></td>
						<td><form:input path="firstname" name="firstname"
								id="firstname" /></td>
					</tr>
					<tr>
						<td><form:label path="lastname">LastName</form:label></td>
						<td><form:input path="lastname" name="lastname" id="lastname" /></td>
					</tr>

					<tr>
						<td><form:label path="address">Address</form:label></td>
						<td><form:input path="address" name="address" id="address" /></td>
					</tr>
					<tr>
						<td><form:label path="phone">Phone</form:label></td>
						<td><form:input path="phone" name="phone" id="phone" /></td>
					</tr>
					<tr>
						<td><form:label path="designation">Designation</form:label></td>
						<td><form:input path="designation" name="designation"
								id="designation" /></td>
					</tr>
					<tr>
						<td><form:label path="role_id">Role Id</form:label></td>
						<td><form:input path="role_id" name="role_id" id="role_id" /></td>
					</tr>
					<tr>
						<td></td>
						<td><form:button id="register" name="register">Register</form:button></td>
					</tr>
					<tr></tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>