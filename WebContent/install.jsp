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
<form action="InstallServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br>
<center>
<table style="margin: 0 auto" bgcolor="#87CEEB">
<tr>
<td colspan="2"><b><center>Install Truck</center></b></td>
</tr>
<tr><td><font style="color: navy;">Branch:</font></td><td><select name="branch" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td></tr>	
<tr>
<td>Truck Model: </td>
<td><input type="text" name="model"  placeholder="Enter Model" /></td></tr>	
<tr>
<td>Truck No.</td>
<td><input type="text" name="tno"  placeholder="Enter truck no" /></td>
</tr>
<tr>
<td>Insurance:</td>
<td><input type="radio" name="insurance" value="yes"/>Yes
<input type="radio" name="insurance" value="no"/>NO</td>
</tr>
<tr>
<td>If Yes then Insurance Company Name:</td>
<td><input type="text" name="cname"  placeholder="Enter company Name" /></td>
</tr>
<tr>
<td>Owner:</td>
<td><input type="text" name="owner"  placeholder="Enter owner"/></td>
</tr>
<tr>
<td>Mobile:</td>
<td><input type="text" name="mobile" placeholder="Enter mobile"/></td>
</tr>
<tr>
<td>Confirm Mobile:</td>
<td><input type="text" name="mobile1" placeholder="Enter mobile"/></td>
</tr>
<tr><td>Route-From:<select name="from" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td><td>To:<select name="to" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					
<tr>
<td><input type="submit"  value="create" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
<td><input type="reset"  value="Refresh" style="font-weight:bold;float:right;font-style:bold;font-size:10pt;color:black;background-color:sky-blue;border:2px lightblue;padding:3px"></td>
</tr>
</table>
<div id="location" align="left"></div>
</form>
<div class="clear"> </div>
                
              </div>
            </div>