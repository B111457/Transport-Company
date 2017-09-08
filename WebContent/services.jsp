<%@page import="java.sql.ResultSet"%>
<%@page import="dao.Dao"%>
<%@page import="model.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view page</title>
</head>

<body>
<form action="ServiceServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>	
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><center><b>Track truck</b></center></td>
</tr>
	
	<tr>
	<td><b>Route-From:<select name="from" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></b></td>
	</tr>
	<tr>
	<td><b>Route-To:<select name="to" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></b></td>
					</tr>
					<tr>
	<td><input type="submit" value="Trace"></td>
	<td><input type="reset" value="Refresh"></td>

	</tr>

	</table>
	</center>
	</form>
	</body>
	</html>