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
String tno=(String)session.getAttribute("tno");
String sql="select * from install where tno='"+tno+"'";
Model m=new Model();
m.setTno(tno);
ResultSet rs=Dao.getValues(m,sql);
%>
<body>

<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<center>
<table cellspacing='3',cellpadding='3' border='3'>
<tr>
<td colspan="2"><center><b>Truck Details</b></center></td>
<tr>
<%
while(rs.next())
{
%>
<tr>
<td><b>Model</b></td>
<td><%=rs.getString(1)%></td>
</tr>
<tr>
<td><b>Truck No</b></td>
<td><%=rs.getString(2)%></td>
</tr>
<tr>
<td><b>Insurance</b> </td>
<td><%=rs.getString(3)%></td>
</tr>
<tr>
<td><b>Cname</b></td>
<td><%=rs.getString(4)%></td>
</tr>
<tr>
<td><b>Owner</b></td>
<td><%=rs.getString(5)%></td>
</tr>
<tr>
<td><b>Mobile</b></td>
<td><%=rs.getString(6)%></td>
</tr>
<tr>
<td><b>From</b></td>
<td><%=rs.getString(7)%></td>
</tr>
<tr>
<td><b>To</b></td>
<td><%=rs.getString(8)%></td>
</tr>
<tr>
<td><b>Branch</b></td>
<td><%=rs.getString(9)%></td>
</tr>
<tr>
<td><center><b><a href="status.jsp">Update</a></b></center></td>
<td><center><b><a href="delete.jsp?msg=<%= rs.getString("tno") %>">Delete</a></b></center></td>
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