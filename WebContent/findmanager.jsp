<%@page import="java.sql.ResultSet"%>
<%@page import="dao.Dao"%>
<%@page import="model.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>find manager</title>
</head>
<body>
<form action="MfindServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><b><center>Find manager</center></b></td>
</tr>
<tr><td><font style="color: navy;">Branch:</font></td><td><select name="branch" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td></tr>	

<tr>
<td colspan="2"><center><b></b></center></td>
</tr>
<tr>
<td>Username</td>
<td><input type="email" name="username"  placeholder="Enter username" /></td>
</tr>
<tr>
<td><input type="submit" value="Find"></td>
</tr>
</table>
</form>
</body>

</html>