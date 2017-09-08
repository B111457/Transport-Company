<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transport Company</title>
<link rel="StyleSheet" type="text/css" href="css/style.css">
<link rel="icon" href="images/logo.jpg">
<script type="text/javascript">
javascript:window.history.forward();
</script>
</head>
<body>
<div id="header">
<div id="logo"></div>
<div id="headtitle">Transport Company</div>
<div id="subtitle">We are care about Your Cargo</div>

<ul class="mymenu">
<%
try
{
String  login=(String)session.getAttribute("login").toString();
String  cus=(String)session.getAttribute("c").toString();
if(login.equals("true")&&cus.equals("ADMIN"))
{
%>

<ul>
	<li><a class="active" href="adminprofile.jsp">Profile</a></li>
	<li><a class="active" href="profile1.jsp">Home</a></li>
	<li><a class="active" href="ritruck.jsp">Installed  Trucks</a></li>
	<li><a class="active" href="changepassword.jsp">Change Password</a></li>
	<li><a class="active" href="findtruck.jsp">Find  Truck</a></li>
	<li><a class="active" href="services.jsp">Services</a></li>
	<li><a class="active" href="contacted.jsp">Contact Us</a></li>
	<li><a class="active" href="logout.jsp">Logout</a></li>
	</ul>

<%
}
else if(login.equals("true")&&cus.equals("MANAGER"))
{%>

<ul>
	<li><a class="active" href="mprofile.jsp">Profile</a></li>
	<li><a class="active" href="ritruck.jsp">Trucks</a></li>
	<li><a class="active" href="mchangepassword.jsp">ChangePassword</a></li>
	<li><a class="active" href="findtruck.jsp">Find Truck</a></li>
	<li><a class="active" href="towards.jsp">Towards</a></li>
	<li><a class="active" href="services.jsp">Services</a></li>
	<li><a class="active" href="contact.jsp">Contact Us</a></li>
	<li><a class="active" href="logout.jsp">Logout</a></li>
</ul>

<% } 
}
catch(Exception e){%>
<nav>
<ul>
	<li><a class="active" href="about.jsp">about</a></li>
	<li><a class="active" href="login.jsp">Login</a></li>
	<li><a class="active" href="ritruck.jsp">Installed Trucks</a></li>
	<li><a class="active" href="services.jsp">Services</a></li>
	<li><a class="active" href="contact.jsp">Contact Us</a></li>
</ul>
</nav>
<%
e.printStackTrace();}; %>
</ul>
</body>
</html>