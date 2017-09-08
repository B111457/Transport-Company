<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OTP Page</title>
</head>
<body>
<form action="OtpSer" method="post">
<jsp:include page="header.jsp"></jsp:include>
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><center><b>OTP</b></center></td>
<tr><td><b>Enter OTP</b>:</td>
<td><input type="text" name="otp" placeholder="Enter Otp">
</td></tr>
<td><input type="submit"  value="Submit" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
<td><input type="reset"   value="Refresh" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>

</tr>
</table>
</center>
</form>
</body>
</html>