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
	String username=(String)session.getAttribute("username");
	if(!(username.equals("null")))
	{
String sql="select * from managers";
Model m=new Model();
ResultSet rs=Dao.getValues(m,sql);
%>
<body>
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<center>
<table cellspacing='3',cellpadding='3' border='3'>
<tr>
<td colspan="2"><center><b>Manager Details</b></center></td>
<tr>
<%
while(rs.next())
{
%>
<tr>
<td><b>Branch</b></td>
<td><%=rs.getString(1)%></td>
</tr>
<tr>
<td><b>Manager Name</b></td>
<td><%=rs.getString(2)%></td>
</tr>
<tr>
<td><b>UserName</b> </td>
<td><%=rs.getString(3)%></td>
</tr>
<tr>
<td><b>Passwordr</b></td>
<td><%=rs.getString(4)%></td>
</tr>
<tr>
<td><b>Date Of Joining</b></td>
<td><%=rs.getString(5)%></td>
</tr>
<tr>
<td><b>Date Of Birth</b></td>
<td><%=rs.getString(6)%></td>
</tr>
<tr>
<td><b>salary</b></td>
<td><%=rs.getString(7)%></td>
</tr>
<tr>
<td colspan="2"><a href="mupdate.jsp">Update</a></td>
</tr>

</table>
</center>
</body>
<%}
	}
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
</html>