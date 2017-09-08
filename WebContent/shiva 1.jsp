<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Website!! An innovative way to create my website</title>
<link rel="StyleSheet" type="text/css" href="css/style.css">
<link rel="icon" href="images/logo.jpg">
<script type="text/javascript">
javascript:window.history.forward();
</script>
</head>
<body>
<div id="header">
<div id="logo"></div>
<div id="headtitle"></div>
<div id="subtitle"></div>

<ul class="mymenu">
<li class="menuitem"><a class="menulink" href="index.jsp">Home</a></li>
<%
try
{
String  login=(String)session.getAttribute("login");
if(login.equals("true"))
{
%>
<li class="menuitem"><a class="menulink" href="update.jsp">Update</a></li>
<li class="menuitem"><a class="menulink" href="logout.jsp">Logout</a></li>
<li class="menuitem"><a class="menulink" href="changepassword.jsp">Change Password</a></li>
<%
}
else
{%>
<li class="menuitem"><a class="menulink" href="login2.jsp">Admin</a></li>
<li class="menuitem"><a class="menulink" href="login.jsp">Customer</a></li>
<% } %>
<li class="menuitem"><a class="menulink" href="about.jsp">About</a></li>
<li class="menuitem"><a class="menulink" href="contact.jsp">Contact</a></li>
</ul>
</div>
<div id="content">
 Welcome to Pharmacy Website!!

</div>
<%}catch(Exception e){%>
<li class="menuitem"><a class="menulink" href="login2.jsp">Admin</a></li>
<li class="menuitem"><a class="menulink" href="login.jsp">Customer</a></li>
<li class="menuitem"><a class="menulink" href="contact.jsp">Contact</a></li>
<li class="menuitem"><a class="menulink" href="about.jsp">About</a></li>
<%
e.printStackTrace();}; %>
</body>
</html>