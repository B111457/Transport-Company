<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<META HTTP-EQUIV="refresh" CONTENT="<%=session.getMaxInactiveInterval() %>;URL=./logout.jsp">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Page</title>
<script
type="text/javascript" language="javascript">    
javascript:window.history.forward(1);
</script>

<%  
response.setHeader("Pragma","no-cache");  
response.setHeader("Cache-Control","no-store");  
response.setHeader("Expires","0");  
response.setDateHeader("Expires",-1);  
%>
</head>
<body>
<%
if(session.getAttribute("email")!=null)
{
%>


Welcome ${email}
<jsp:include page="header.jsp"></jsp:include>
<br><br><br>
<%
String path=application.getRealPath("\\images\\");

String emailid=(String)session.getAttribute("email");

path=path+emailid+".jpg";
File f=new File(path);
String src="";
if(f.exists())
{
src=f.getName();
System.out.println("hello"+src);

}
else
{
	src="profile.jpg";
}

%>

<div id='bottom'></div>
<br>


<div id="right1" align="center">

<a href="findmanager.jsp"><font style="color: navy;"><B>Find Manager</B></font></a><BR/>

<br>
<a href="create.jsp"><font style="color: navy;"><B>Create New Manager</B></font></a>   <br/>
<br>               
<a href="install.jsp"><font style="color: navy;"><B>Install New Truck</B></font></a>
  </div>             

<script type="text/javascript">
<%try
{
	String msg=request.getParameter("msg");
	if(msg.equals("qwerty"))
	{%>
		alert("Login Successfully");
	<%}
}
catch(Exception e)
{
	e.printStackTrace();
}%>



</script>
<jsp:include page="footer.jsp"></jsp:include>
<%}
else
{
	response.sendRedirect("login.jsp");
}


%>
</body>
</html>