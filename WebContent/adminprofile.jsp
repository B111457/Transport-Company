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
<%
try
{
String sql="select * from admin";
Model m=new Model();
ResultSet rs=Dao.getValues(m,sql);
%>
<body>

<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<center>
<table cellspacing='3',cellpadding='3' border='3'>
<tr>
<td colspan="2"><center><b>Admin Details</b></center></td>
<tr>
<%
while(rs.next())
{
%>
<tr>
<td><b>Name</b></td>
<td><%=rs.getString(1)%></td>
</tr>
<tr>
<td><b>Contact</b></td>
<td><%=rs.getString(2)%></td>
</tr>
<tr>
<td><b>Address</b> </td>
<td><%=rs.getString(3)%></td>
</tr>
<tr>
<td><b>Gender</b></td>
<td><%=rs.getString(4)%></td>
</tr>
<tr>
<td><b>Country</b></td>
<td><%=rs.getString(5)%></td>
</tr>
<tr>
<td><b>State</b></td>
<td><%=rs.getString(6)%></td>
</tr>
<tr>
<td><b>Emailid</b></td>
<td><%=rs.getString(7)%></td>
</tr>
<tr>
<td><b>Password</b></td>
<td><%=rs.getString(8)%></td>
</tr>
<tr>
<td><b>DOB</b></td>
<td><%=rs.getString(9)%></td>
</tr>
</table>
</center>
</body>
<%}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>








</html>