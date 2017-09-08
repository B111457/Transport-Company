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
String sql="select * from contact";
Model m=new Model();
ResultSet rs=Dao.getValues(m,sql);
%>
<body>
<form action="ContactedServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<center>
<table cellspacing='3',cellpadding='3' border='3'>
<tr>
<td colspan="4"><center><b>Customer Requests</b></center></td>
</tr>
<tr>
<th> Branch:</th>
<th> Manager Name:</th>
<th> Subject:</th>
<th> Message:</th>
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
</tr>


<%}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
</center>
</body>
</html>