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
<body>
<form action="CreateServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br><br><br>
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><b><center>Create Manager</center></b></td>
</tr>
<tr><td><b>Branch:</b></td><td>
					<select name="branch">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td></tr>
<tr>
<td><b>ManagerName:</b></td>
<td><input type="text" size="41" name="mname" placeholder="Enter managername">
</td>
<tr>
<td><b>Username:</b></td>
<td><input type="email" size="41" name="username" placeholder="Enter emailid">
</td>
<tr>
<td><b>Password:</b></td>
<td><input type="password" size="41" name="pass" placeholder="Enter Password">
</td>
</tr>
<tr>
<td><b>Confirm Password:</b></td>
<td><input type="password" size="41" name="pass1" placeholder="Confirm Password">
</td>
</tr>
<tr>
<td><b>Date of Joining:</b></td>
<td><input type="date"size="41" name="doj" placeholder="Enter doj"></td>
</tr>
<tr>
<td><b>Date of Birth:</b></td>
<td><input type="date" name="dob" placeholder="Enter dob"></td>
</tr>
<tr>
<td><b>Salary:</b></td>
<td><input type="text" name="salary" placeholder="Enter salary"></td>
</tr>
<tr>
<td><input type="submit"  value="create" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
<td><input type="reset"  value="Refresh" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>

</tr>
</table>
</center>
</body>
</html>