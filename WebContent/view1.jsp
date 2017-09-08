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
String br=(String)session.getAttribute("branch");
String uname=(String)session.getAttribute("username");
String sql="select * from managers where branch='"+br+"' and username='"+uname+"'";
Model m=new Model();
m.setBranch(br);
m.setUsername(uname);
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
<td><b>ManagerName</b></td>
<td><%=rs.getString(2)%></td>
</tr>
<tr>
<td><b>username</b> </td>
<td><%=rs.getString(3)%></td>
</tr>
<tr>
<td><b>Password</b></td>
<td><%=rs.getString(4)%></td>
</tr>
<tr>
<td><b>doj</b></td>
<td><%=rs.getString(5)%></td>
</tr>
<tr>
<td><b>dob</b></td>
<td><%=rs.getString(6)%></td>
</tr>
<tr>
<td><b>salary</b></td>
<td><%=rs.getString(7)%></td>
</tr>
<tr>
<td><a href="del1.jsp?msg=<%=br%>&msg1=<%=uname%>">Delete</a></td>
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