<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/countries.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action="RegisterServlet" method="post">
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><center><b>Register Here</b></center></td>
</tr>
<tr>
<td><b>First Name:</b></td>
<td><input type="text"  size="42"name="fname" placeholder="Enter First Name" maxlength="100"></td>
</tr>
<tr>
<td><b>Last Name:</b></td>
<td><input type="text" size="42" name="lname" placeholder="Enter Last Name" maxlength="100" ></td>
</tr>
<tr>
<td><b>Contact:</b></td>
<td><input type="text" size="42" name="con" placeholder="Enter Number" maxlength="10" ></td>
</tr>
<tr>
<td><b>Address:</b></td>
<td><textarea rows="5px" cols="31px" name="addr" placeholder="Enter Address" maxlength="1000" ></textarea>
</td>
</tr>
<tr>
<td><b>Gender:</b></td>
<td><input type="radio" name="gender" value="M" checked="checked">Male
<input type="radio" name="gender" value="F">Female</td>
</tr>
<tr>
<td><b>Country:</b></td>
<td><select name="country" id="country">
</select>
</td>
</tr>
<td><b>State:</b></td>
<td><select name="state" id="state">
</select>
</td>
</tr>
<tr>
<td><b>Emailid:</b></td>
<td><input type="email" size="42" name="emailid" placeholder="Enter Emailid" maxlength="100" >
</td>
</tr>

<tr>
<td><b>Password:</b></td>
<td><input type="password" size="42" name="pass" placeholder="Enter Password" maxlength="100" >
</td>
</tr>
<tr>
<td><b>Confirm Password:</b></td>
<td><input type="password"  size="42"name="pass1" placeholder="Enter New Password" maxlength="100" >
</td>
</tr>
<tr>
<td><b>Date Of Birth:</b></td>
<td><input type="date"  size="42"name="dob" placeholder="Enter Date" maxlength="100" >
</td>
</tr>
<tr>
<td><input type="submit"  value="Register" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
<td><input type="reset"  value="Refresh" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
</tr>



</table>
</center>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
populateCountries("country","state");


</script>
</form>
<script type="text/javascript">
<%
try
{
String msg=request.getParameter("msg");
if(msg.equals("abc"))
{
%>
alert("All Fields Are Mandatory");
<%}
else if(msg.equals("asd"))
{%>
	alert("Please Try Again");
<%}
else if(msg.equals("zxc"))
{%>
	alert("Please enter the same password");
<%}
}
catch(Exception e)
{}

%>









</script>









</body>
</html>