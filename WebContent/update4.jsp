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

<body>
<%
try
{
	String emailid=(String)session.getAttribute("msg");
	String sql="select * from admin where emailid='"+emailid+"'";
	Model m=new Model();
	m.setEmailid(emailid);
	ResultSet rs=Dao.getValues(m,sql);
%>
<form action="UpdateServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><center><b>Update details</b></center></td>
</tr>
<%
while(rs.next())
{%>
	<tr>
	<td><b>Name:</b></td>
	<td><input type="text" size="41" name="name" value="<%=rs.getString(1)%>"></td>
	</tr>
	<tr>
	<td><b>Contact:</b></td>
	<td><input type="text" size="41" name="contact" value="<%=rs.getString(2)%>"></td>
	</tr>
	<tr>
	<td><b>Address:</b> </td>
	<td><input type="text" size="41" name="address" value="<%=rs.getString(3)%>"></td>
	</tr>
	<tr>
	<td><b>Gender:</b></td>
	<td><input type="text"size="41" name="gender" value="<%=rs.getString(4)%>"></td>
	</tr>
	<tr>
	<td><b>Country:</b></td>
	<td><input type="text"size="41" name="country" value="<%=rs.getString(5)%>"></td>
	</tr>
	<tr>
	<td><b>State:</b></td>
	<td><input type="text"size="41" name="state" value="<%=rs.getString(6)%>"></td>
	<tr>
	<td><b>DOB:</b></td>
	<td><input type="date"size="41" name="dob" value="<%=rs.getString(9)%>"></td>
	</tr>
	<tr>
	<td><input type="submit" value="Update"></td>
	<td><input type="reset" value="Refresh"></td>
	</tr>
	</table>
	</center>
	<%}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
	</form>
	</body>

	</html>