<%@page import="java.sql.ResultSet"%>
<%@page import="dao.Dao"%>
<%@page import="model.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/countries.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View page</title>
</head>
<%
try
{
String email=(String)session.getAttribute("email");
String sql="select * from managers where emailid='"+email+"'";
Model m=new Model();
m.setEmailid(email);
ResultSet rs=Dao.getValues(m,sql);
%>
<body>
<form action="UpdateServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><center><b>View page</b></center></td>
<tr>
<%
while(rs.next())
{
%>
<tr>
<td><b>First Name</b></td>
<td><input type="text" size="41"name="fname" value="<%=rs.getString(1)%>"></td>
</tr>
<tr>
<td><b>Last Name</b></td>
<td><input type="text" size="41"name="lname" value="<%=rs.getString(2)%>"></td>
</tr>
<tr>
<td><b>Contact</b> </td>
<td><input type="text" size="41"name="con" value="<%=rs.getString(3)%>"></td>
</tr>
<tr>
<td><b>Address</b></td>
<td><input type="text"size="41" name="addr" value="<%=rs.getString(4)%>"></td>
</tr>
<tr>
<td><b>Country</b></td>
<td><select name="country" id="country">
<option value="<%=rs.getString(6)%>"><%=rs.getString(6)%></option>
</select></td>
</tr>
<tr>
<td><b>State</b></td>
<td><select name="state" id="state">
<option value="<%=rs.getString(7)%>"><%=rs.getString(7)%></option>
</select></td>
</tr>
<tr>
<td><b>Dob</b></td>
<td><input type="text" size="41" name="dob" value="<%=rs.getString(10)%>"></td>
</tr>
<tr>
<td><input type="submit"  value="Update" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
<td><input type="reset"  value="Refresh" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>

</tr>










</table>
</center>
<script type="text/javascript">
populateCountries("country","state");
</script>
</form>
</body>

<%}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>








</html>