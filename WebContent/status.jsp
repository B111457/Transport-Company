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
<form action="StatusServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><center><b>Update Status</b></center></td>
</tr>
<%
while(rs.next())
{%>
	<tr>
	<td><b>Truck Model:</b></td>
	<td><input type="text" size="41" name="model" value="<%=rs.getString(1)%>"></td>
	</tr>
	<tr>
	<td><b>Truck Number</b></td>
	<td><input type="text" size="41" name="tno" value="<%=rs.getString(2)%>"></td>
	</tr>
	<tr>
	<td><b>Insurance</b> </td>
	<td><input type="text" size="41" name="insurance" value="<%=rs.getString(3)%>"></td>
	</tr>
	<tr>
	<td><b>If Yes then Insurance Company Name:</b></td>
	<td><input type="text"size="41" name="cname" value="<%=rs.getString(4)%>"></td>
	</tr>
	<tr>
	<td><b>Owner:</b></td>
	<td><input type="text"size="41" name="owner" value="<%=rs.getString(5)%>"></td>
	</tr>
	<tr>
	<td><b>Mobile:</b></td>
	<td><input type="text"size="41" name="mobile" value="<%=rs.getString(6)%>"></td>
	</tr>
	<tr>
	<td><b>Route-From:<select name="from1" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></b></td>
	<td><input type="text" size="41" name="from" value="<%=rs.getString(7)%>"></td>
	</tr>
	<tr>
	<td><b>Route-To:<select name="to1" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></b></td>
					<td><input type="text" size="41" name="to" value="<%=rs.getString(8)%>"></td>
					</tr>
	<tr>
	<td><b>Branch:<select name="branch" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></b></td>
					<td><input type="text" size="41" name="to" value="<%=rs.getString(9)%>"></td>
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