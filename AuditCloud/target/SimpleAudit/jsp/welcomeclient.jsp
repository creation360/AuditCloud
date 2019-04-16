<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Audit Cloud</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png" href="/images/favicon.ico" />
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="webjars/bootstrap/4.3.1/css/bootstrap.css" rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default bg-dark">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Audit Cloud</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">DASHBOARD</a></li>
				<li><a href="#">RESULTS</a></li>
				<li><a href="#">YTD LEADERBOARDS</a></li>
				<li><a href="#">COMPARE RESULTS</a></li>
				<li><a href="#">SURVEYS</a></li>
				<li><a href="#">MY ACCOUNT</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<table class="table">
			<tr>
				<td>Welcome ${firstname}</td>
				<td>${email}</td>
			</tr>
			<tr>
			</tr>
			<tr>
			</tr>
			<tr>
				<td><a href="<%=request.getContextPath()%>/user">View your
						profile</a></td>
			</tr>
			<tr>
				<td><a href="<%=request.getContextPath()%>/logout">Logout</a></td>
			</tr>
		</table>
	</div>

</body>
</html>