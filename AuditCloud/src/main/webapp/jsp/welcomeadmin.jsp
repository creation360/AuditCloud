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
			<a href="#"><img style="max-width: 250px; margin-top: -7px;"
				src="resources/images/ac-logo-x2-v2.png" /></a> &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="navbar-left" style="color: #00FFFF;"
				href="http://www.auditcloud.com/admin/my_account"
				class="navbar-left"> <span class="icon-person"></span>
				admin@auditcloud.com
			</a> &emsp; &emsp;&nbsp; <a class="navbar-brand"
				href="<%=request.getContextPath()%>/logout">Logout</a>

		</div>
	</div>
	</nav>
	<nav class="navbar navbar-dark bg-primary">
	<div class="container-fluid">
		<div class="navbar-header">
			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
			&emsp; &emsp; &emsp; &emsp; <a class="navbar-brand" href="#">DASHBOARD</a>
			<a class="navbar-brand" href="#">AUDITORS</a> <a class="navbar-brand"
				href="#">CLIENTS</a> <a class="navbar-brand" href="#">COMPARE
				RESULTS</a> <a class="navbar-brand" href="#">SURVEYS</a> <a
				class="navbar-brand" href="#">QUESTIONS</a>
		</div>
	</div>
	</nav>
	<div class="float-right">
		<table>
			<tr>
				<td><h3>
						Admin Dashboard
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
	<div class="container">
		<table>
			<tr>
				<td><br /></td>
			</tr>
			<tr>
				<td><br /></td>
			</tr>
			<tr>
				<td><br /></td>
			</tr>
		</table>
	</div>
	<br />
	<div class="row">
		<div class="col-sm-4 offset-md-1">
			<div class="card bg-light">
				<div class="card-body">
					<h5 class="card-title">Manage Auditors</h5>
					<p class="card-text">Manage Audit Companies and their
						individual Auditors.</p>
					<a href="http://www.auditcloud.com/admin/auditors"
						class="btn btn-primary">Manage Auditors</a>
				</div>
			</div>
		</div>
		<div class="col-sm-4 offset-md-1">
			<div class="card bg-light">
				<div class="card-body">
					<h5 class="card-title">Manage Clients</h5>
					<p>Manage Suppliers and Vendors and their locations.</p>
					<a href="http://www.auditcloud.com/admin/clients"
						class="btn btn-primary">Manage Clients</a>
				</div>
			</div>
		</div>
	</div>
	<br />
	<div class="row">
		<div class="col-sm-4 offset-md-1">
			<div class="card bg-light">
				<div class="card-body">
					<h5 class="card-title">Manage Surveys</h5>
					<p>Manage Surveys, their questions, and the values of each
						answer.</p>
					<a href="http://www.auditcloud.com/admin/surveys"
						class="btn btn-primary">Manage Surveys</a>
				</div>
			</div>
		</div>
		<div class="col-sm-4 offset-md-1">
			<div class="card bg-light">
				<div class="card-body">
					<h5 class="card-title">Manage Questions</h5>
					<p>Manage all questions without needing to be inside of a
						survey.</p>
					<a href="http://www.auditcloud.com/admin/clients"
						class="btn btn-primary">Manage Questions</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>