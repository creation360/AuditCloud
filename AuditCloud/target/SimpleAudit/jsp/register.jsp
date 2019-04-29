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
		<div>
			<a href="#" class="navbar-left"><img
				style="max-width: 250px; margin-top: -7px;"
				src="resources/images/ac-logo-x2-v2.png" /></a>
				</div>
				 <div><a class="navbar-brand" href="home.jsp">Home</a></div>
		</div>
	</div>
	</nav>
	<div class="jumbotron vertical-center" style="background: white">
		<div class="container ">
			<div class="row">
				<div class="col-md-6 login-form-1 ">
					<h2>Register</h2>
					<form:form id="regForm" modelAttribute="user"
						action="registerProcess" method="post" class="form-group">
						
						<div class="form-group" class="col-md-4 mb-3">
							<form:label for="email" path="email">Email:</form:label>
							<form:input type ="email" placeholder="Enter email" class="form-control"
								path="email" name="email" id="email" required="required"/>
						</div>
						<div class="form-group">
							<form:label path="password">Password</form:label>
							<form:password placeholder="Enter password" class="form-control"
								path="password" name="password" id="password" required="required"/>
						</div>
						<div class="form-group">
							<form:label path="firstname">FirstName</form:label>
							<form:input placeholder="Enter first name" class="form-control"
								path="firstname" name="firstname" id="firstname" required="required"/>
						</div>
						<div class="form-group">
							<form:label path="lastname">LastName</form:label>
							<form:input placeholder="Enter last name" class="form-control"
								path="lastname" name="lastname" id="lastname" required="required"/>
						</div>
						<div class="form-group">
							<form:label path="address">Address</form:label>
							<form:textarea placeholder="Enter Address" class="form-control"
								path="address" name="address" id="address" required="required"/>
						</div>
						<div class="form-group">
							<form:label path="phone">Phone</form:label>
							<form:input type ="number" placeholder="Enter Phone" class="form-control"
								path="phone" name="phone" id="phone" required="required"/>
						</div>
						<div class="form-group">
							<form:label path="designation">Designation</form:label>
							<form:input placeholder="Enter Designation" class="form-control"
								path="designation" name="designation" id="designation" required="required"/>
						</div>
						<div class="form-group">
							<form:label path="role_id">Role</form:label>
							<form:select class="form-control" path="role_id" name="role_id" id="role_id" required="required">
								<form:option value="" label="--- Select ---" />
								<form:option value="1" label="Client (level 1)" />
								<form:option value="2" label="Client (level 2)" />
								<form:option value="3" label="Client (level 3)" />
								<form:option value="4" label="Auditor" />
							</form:select>
						</div>
						<div class="form-group">
							<form:button type="submit" class="btn btn-primary btn-lg"
								id="register" name="register">Register</form:button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>