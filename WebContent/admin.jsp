<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Here</title>
</head>
<body>
<form action="AdminServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br>
<table style="margin:0 auto;" bgcolor="#87CEEB">
<tr>
<td colspan="2"><center><b>Login Here</b></center></td>
</tr>
<tr>
<td><b>Emailid:</b></td>
<td><input type="email" name="emailid" placeholder="Enter Emailid">
</td>
</tr>
<tr>
<td><b>Password:</b></td>
<td><input type="password" name="password" placeholder="Enter Password">
</td>
</tr>
<tr>
<td><input type="submit"  value="Login" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
<td><input type="reset"  value="Refresh" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
</tr>
<tr>
<td><a href="forgotpassword.jsp">ForGot Password!!</a>
</td>
</tr>
</table>
</form>
</body>
</html>