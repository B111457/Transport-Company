<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="ChangeServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><center><b>Change Password</b></center></td>
</tr>
<tr>
<td><b>Old Password:</b></td>
<td><input type="password" name="pass" placeholder="Enter Password">
</td>
</tr>
<tr>
<td><b>New Password:</b></td>
<td><input type="password" name="pass1" placeholder="Enter Password">
</td>
</tr>

<tr>
<td><b>Confirm Password:</b></td>
<td><input type="password" name="pass2" placeholder="Enter Password">
</td>
</tr>
<tr>
<td><input type="submit"  value="ChangePassword" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
<td><input type="reset"  value="Refresh" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>

</tr>


</table>


</center>
</form>
</body>
</html>