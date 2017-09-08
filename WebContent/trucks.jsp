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
String sql="select * from install where branch='"+br+"'";
Model m=new Model();
m.setBranch(br);

ResultSet rs=Dao.getValues(m,sql);
%>
<body>

<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<br><br><br><br>
<center>
<table cellspacing='3',cellpadding='3' border='3'>
<tr>
<td colspan="8"><center><b>Trucks Details</b></center></td>
</tr>
<tr>
<td><b>Model</b></td>
<td><b>TNo</b></td>
<td><b>Insurance</b></td>
<td><b>Company Name</b></td>
<td><b>Owner</b></td>
<td><b>Mobile </b></td>
<td><b>From</b></td>
<td><b>To</b></td>
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
<%}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
</center>
</form>
</body>
</html>