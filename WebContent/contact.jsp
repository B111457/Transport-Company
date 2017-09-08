<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Page</title>
</head>
<body>
<form action="ContactServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<center>
<table id="t01">
<td colspan="2"><b><center>Contact Admin</center></b></td>
<tr><td><b>Branch:</b></td><td>
					<select name="branch">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td></tr>
</tr>
<tr>
<td><b>EnterName:</b></td>
<td><input type="text" size="41" name="mname" placeholder="Enter Name"></td>
<tr>
<td><b>subject</b></td>
<td><input type="text" size="41" name="sub" placeholder="Enter Subject"></td>
</tr>
<tr>
<td><b>Message:</b></td>
<td><textarea size="41" name="message" placeholder="Enter Message"></textarea></td>
</tr>
<tr>
<td><input type="submit"  value="Submit" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
<td><input type="reset"  value="Refresh" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
</tr>
</table>
</center>
</form>
</body>
</html>