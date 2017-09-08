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
String sql="select * from install";
Model m=new Model();

ResultSet rs=Dao.getValues(m,sql);
%>
<body>
<form action="RiServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><center><b>View page</b></center></td>
</tr>
<tr>
<th> Model:</th>
<th> tno</th>
<th> insurance</th>
<th> cname</th>
<th> owner</th>
<th> mobile </th>
<th> from</th>
<th> to</th>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
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