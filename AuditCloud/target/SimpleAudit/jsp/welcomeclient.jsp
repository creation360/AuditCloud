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
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		if (session.getAttribute("login") == null) {
			String url = request.getContextPath() + "/login";
			response.sendRedirect(url);
		}
	%>
	<nav class="navbar navbar-dark bg-dark">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="#" class="navbar-left"><img
				style="max-width: 250px; margin-top: -7px;"
				src="resources/images/ac-logo-x2-v2.png" /></a> &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp;<a class="navbar-brand"
				href="<%=request.getContextPath()%>/logout">Logout</a>
		</div>
	</div>
	</nav>
	<nav class="navbar navbar-dark bg-primary">
	<div class="container-fluid">
		<div class="navbar-header">
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; <a class="navbar-brand" href="#">DASHBOARD</a>
			<a class="navbar-brand" href="#">RESULTS</a> <a class="navbar-brand"
				href="#">YTD LEADERBOARDS</a> <a class="navbar-brand" href="#">COMPARE
				RESULTS</a> <a class="navbar-brand" href="#">SURVEYS</a> <a
				class="navbar-brand" href="#">MY ACCOUNT</a>
		</div>
	</div>
	</nav>
	<div class="float-right">
		<table>
			<tr>
				<td><h3>
						Client Level 1 Dashboard
						<h3></td>
			</tr>
			<tr>
				<td><a href="<%=request.getContextPath()%>/user">View your
						profile</a></td>
			</tr>
			<tr>
				<td><a href="home.jsp">Home</a></td>
			</tr>
		</table>
	</div>
</body>
</html>