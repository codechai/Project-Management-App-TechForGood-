<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% String statement = request.getParameter("statment");
    if (statement != null) {
    	out.print("<h1>" + statement + "</h1>");
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ProjectManagement</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap Core CSS -->
<link href="bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">

<!-- Timeline CSS -->
<link href="dist/css/timeline.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="bower_components/morrisjs/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="bower_components/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!DOCTYPE html>
<html lang="en">


<div id="wrapper">

	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-static-top" role="navigation"
		style="margin-bottom: 0">
	<div class="navbar-header">
		<center>
			<h1>Project Management Application</h1>
		</center>
		<div>
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li><a href="home.jsp"><i class="fa fa-dashboard fa-fw"></i>
								Dashboard<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="addproject.jsp">Add Projects</a></li>
								<li><a href="projectslist.jsp">List of Projects</a></li>
								<li><a href="updateproject.jsp">Update Projects</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
	</nav>
	<div id="page-wrapper">
	
		<div class="container">
		<h1>Add a Project</h1>
	
			<form  class="form-horizontal" action="projectcontroller" >
				<div class="form-group">
					<label class="control-label col-sm-2" for="p_name">Project Name</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="projectname"
							placeholder="Project Name">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="p_manager">Project Manager</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="p_manager"
							placeholder="Project Manager Name">
					</div>
				</div>
					<div class="form-group">
					<label class="control-label col-sm-2" for="p_team">Number of Team Leaders</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="no_leaders"
							placeholder="Number of  team leaders">
					</div>
				</div>	<div class="form-group">
					<label class="control-label col-sm-2" for="p_volunteer">Number of Volunteers</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="no_volunteers"
							placeholder="Number of  Volunteers">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="p_budget">Project Budget</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="p_budget"
							placeholder="Project Budget">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="p_location">Project Location</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="p_location"
							placeholder="Project Location">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="p_duration">Project Duration</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="p_from"
							placeholder="From(YYYY-MM-DD)">
							<input type="text" class="form-control" name="p_to"
							placeholder="to(YYYY-MM-DD)">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="bower_components/raphael/raphael-min.js"></script>
<script src="bower_components/morrisjs/morris.min.js"></script>
<script src="js/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="dist/js/sb-admin-2.js"></script>


</body>
</html>