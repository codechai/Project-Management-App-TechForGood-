<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="com.beans.projectbean" %>
    <%@page import ="com.dao.projectdao" %>
     <%@ page import = "java.util.*"%>
     <%
String message = request.getParameter("message");
if(message != null){
	out.print("<h2><font color = green>" + message+"</font></h2>");
}%>
     <%  
     projectdao cont = new projectdao();
     List<projectbean> lst = cont.listProjects();
     ListIterator<projectbean> lt = lst.listIterator();
     %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProjectManagement</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
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
								<li><a href="updateproject.jsp">Update Projects</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
	</nav>
	</div>
<div id="page-wrapper">
	
		<div class="container">
<table class = "table table-hover" border="0">
<tr>
<td>PROJECT_ID</td>
<td>PROJECT_NAME</td>
<td>MANAGER</td>
<td>LEADERS</td>
<td>VOULENTEERS</td>
<td>BUDGET</td>
<td>LOCATION</td>
<td>FROM</td>
<td>TO</td>
</tr>
 <%  while(lt.hasNext()) 
 {
	 projectbean cb = lt.next();	 
	 out.print("<tr>");
	 out.print("<td>"+cb.getProjectid());
	 out.print("<td>"+cb.getProjectname());
out.print("<td>"+cb.getP_manager());

    //out.print(cb.getImage()); 
    out.print("<td>" + cb.getNo_leaders());
	 out.print("<td>"+cb.getNo_volunteers());
	 out.print("<td>"+cb.getP_budget());
	 out.print("<td>"+cb.getP_location());
	 out.print("<td>"+cb.getP_from());
	 out.print("<td>"+cb.getP_to());
	 out.print("<td><a href =deleteproject?id="+ cb.getProjectid()+"><span class = \"glyphicon glyphicon-trash\" style = color: \"red\"; fontsize: \"30px\";></span> </a></td>");
	 //out.print("<td><a href =updateproductlist.jsp?id="+cb.getProd_id()+"&nm="+cb.getProd_name()+"&desc="+cb.getDescription()+"&stock="+cb.getStock()+"&price="+cb.getPrice()+"&offer="+cb.getOffers()+"&image="+cb.getImage()+"><span class=\"glyphicon glyphicon-refresh\"></span></a></td>"); 
		
	 out.print("</tr>");
 }
 %>
 </table>
 </div>
 </div>
</body>
</html>