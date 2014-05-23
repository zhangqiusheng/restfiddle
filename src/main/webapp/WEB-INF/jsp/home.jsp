<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>RESTFiddle</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<c:url value="/resources/text.txt" var="url" />
	<spring:url value="/resources/text.txt" htmlEscape="true" var="springUrl" />

	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">RESTFiddle</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Dashboard</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Help</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-2 sidebar" style="border-right: 1px solid lightgray; height: 100%; position: fixed;">
				<br>
				<div class="dropdown">
					<button class="btn btn-default" data-toggle="dropdown">
						Demo Workspace <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li role="presentation"><a role="menuitem" href="#">Social Workspace</a></li>
						<li role="presentation"><a role="menuitem" href="#">Google API Workspace</a></li>
						<li role="presentation"><a role="menuitem" href="#">Miscellaneous Workspace</a></li>
						<li role="presentation" class="divider"></li>
						<li role="presentation"><a role="menuitem" href="#">Add New Workspace</a></li>
					</ul>
				</div>
				<hr>
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#"><span class="glyphicon glyphicon-road"></span>&nbsp;&nbsp;Project1</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-road"></span>&nbsp;&nbsp;Project2</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-road"></span>&nbsp;&nbsp;Project3</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-road"></span>&nbsp;&nbsp;Project4</a></li>
				</ul>
				<hr>
				<ul class="nav nav-sidebar">
					<li><a href=""><span class="glyphicon glyphicon-time"></span>&nbsp;&nbsp;Activity Log</a></li>
					<li><a href=""><span class="glyphicon glyphicon-wrench"></span>&nbsp;&nbsp;Settings</a></li>
					<li><a href=""><span class="glyphicon glyphicon-eject"></span>&nbsp;&nbsp;More</a></li>
				</ul>
				<hr>
			</div>
			<div class="col-xs-4" style="left: 17%; height: 100%; position: fixed; overflow-y: scroll;">
				<br>
				<div>
					<p>http://localhost:8080/modules</p>
				</div>
				<hr>
				<div>
					<p>http://localhost:8080/modules/1</p>
				</div>
				<hr>
				<div>
					<p>http://localhost:8080/modules?name=payment</p>
				</div>
				<hr>
				<div>
					<p>http://localhost:8080/modules?name=order</p>
				</div>
				<hr>
				<div>
					<p>http://localhost:8080/modules?name=cart</p>
				</div>
				<hr>
			</div>
			<div class="col-xs-6" style="border-left: 1px solid lightgray; left: 50%; height: 100%; position: fixed; overflow-y: scroll;">

				<form role="form" action="/api/rf" method="post">
					<div class="form-group">
						<br>
						<button class="btn btn-primary">Run</button>
						&nbsp&nbsp&nbsp&nbsp&nbsp
						<div class="btn-group">
							<button type="button" class="btn btn-default">Save</button>
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								<span class="caret"></span> <span class="sr-only">Toggle Dropdown</span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Save As</a></li>
							</ul>
						</div>
						&nbsp&nbsp&nbsp&nbsp&nbsp
						<button class="btn btn-default">Clear</button>
						<hr>
						<div class="container-fluid">
							<div class="row">
								<div class="col-xs-2">
									<select>
										<option>GET</option>
										<option>POST</option>
										<option>PUT</option>
										<option>DELETE</option>
									</select>
								</div>
								<div class="col-xs-10">
									<input style="display: inline;" type="text" class="form-control" id="apiUrl" placeholder="Enter url">
								</div>
							</div>
						</div>
						<br>
						<ul class="nav nav-tabs">
							<li class="active"><a href="#">Body</a></li>
							<li><a href="#">Header</a></li>
							<li><a href="#">Cookie</a></li>
							<li><a href="#">Auth</a></li>
						</ul>
						<br>
						<hr>
						<p>Response</p>
					</div>
				</form>
			</div>

		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.7.2.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>

</html>