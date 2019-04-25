<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 11 Feb 2013 16:00:00 GMT">
<title>Login</title>
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
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
		</div>
	</div>
	</nav>
	<div class="jumbotron vertical-center" style="background: white">
		<div class="container">
			<div class="row">
				<div class="col-md-6 login-form-1">
					<form:form id="loginForm" modelAttribute="login"
						action="loginProcess" method="post">
						<div class="form-group">
							<form:label path="email">Email Address: </form:label>
							<form:input placeholder="name@example.com" type ="email" class="form-control" path="email" name="email"
								id="email" required="required"/>
						</div>
						<div class="form-group">
							<form:label path="password">Password:</form:label>
							<form:password class="form-control" path="password"
								placeholder="password" name="password" id="password" required="required"/>
						</div>
						<div class="form-group">
							<form:button type="submit" class="btn btn-primary btn-lg"
								value="Log In" id="login" name="login">   Login   </form:button>
						</div>
						<div class="form-group">
							<a href="#" class="ForgetPwd">Forget Password?</a>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>
</body>
</html>
