<%@page import="java.sql.ResultSet"%>
<%@page import="dao.Dao"%>
<%@page import="model.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>find truck</title>
</head>
<% try
{
	String username=(String)session.getAttribute("username");
	if(!(username.equals("null")))
	{%>
<body>
<form action="FindServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><b><center>Find Truck</center></b></td>
</tr>
<tr>
<td colspan="2"><center><b></b></center></td>
</tr>
<tr>
<td>Truck No.</td>
<td><input type="text" name="tno"  placeholder="Enter truck no" /></td>
</tr>
<tr>
<td><input type="submit" value="Find"></td>
</tr>
</table>
</form>
<%}
	else
	{
		response.sendRedirect("login.jsp");
	}
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect("login.jsp");
}
	%>
</body>

</html>