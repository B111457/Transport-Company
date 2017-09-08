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
<script
type="text/javascript" language="javascript">    
javascript:window.history.forward(1);
</script>
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
<form action="UpdateServlet" method="post">
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><center><b>Manager Details</b></center></td>
<tr>
<%
while(rs.next())
{
%>
<tr><td><b>Branch:</b></td><td>
					<select name="branch" value=" <%=rs.getString(1)%>">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td></tr>
<tr>
<td><b>ManagerName:</b></td>
<td><input type="text"  name="mname" value=" <%=rs.getString(2)%>">
</td>
<tr>
<td><b>UserName:</b></td>
<td><input type="email"  name="username" value=" <%=rs.getString(3)%>" >
</td>
<tr>
<td><b>Date of Joining:</b></td>
<td><input type="date" name="doj" value=" <%=rs.getString(5)%>"></td>
</tr>
<tr>
<td><b>Date of Birth:</b></td>
<td><input type="date" name="dob" value=" <%=rs.getString(6)%>"></td>
</tr>
<tr>
<td><b>Salary:</b></td>
<td><input type="text" name="salary" value="<%=rs.getString(7)%>"></td>
</tr>
<tr>
<td><input type="submit"  value="Update" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
<td><input type="reset"  value="Refresh" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>

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