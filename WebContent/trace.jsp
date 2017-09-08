<%@page import="dao.Dao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<%try{
	String frm=(String)session.getAttribute("from");
	String to=(String)session.getAttribute("to");
	String sql="select * from install where from='"+frm+"' and to='"+to+"'";
	String p="";
	Model m=new Model();
	m.setFrom(frm);
	m.setTo(to);
	ResultSet rs=Dao.getValues(m,sql);
	%>
	<center>
	<table cellspacing='3',cellpadding='3' border='3'>
<tr>
<td colspan="6"><center><b>Available Trucks</b></center></td>
</tr>
<tr>
<td><b>Model</b></td>
<td><b>Truck No</b></td>
<td><b>Insurance</b></td>
<td><b>Cname</b></td>
<td><b>Owner</b></td>
<td><b>Mobile</b></td>
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
</tr>
<%}%>
</table>
</center>
<%}catch(Exception e){} %>
</body>
</html>