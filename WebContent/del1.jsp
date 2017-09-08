<%@page import="dao.Dao"%>
<%@page import="model.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
		String br=request.getParameter("msg");
		String uname=request.getParameter("msg1");
		String sql="delete from managers where branch='"+br+"' and username='"+uname+"'";
		String p="";
		Model m=new Model();
		m.setBranch(br);
		m.setUsername(uname);
		int i=Dao.delete(m,sql);
		if(i!=0)
		{
			p="/findmanager.jsp";
		}
		else
		{
			p="/view1.jsp";
		}
		
		getServletContext().getRequestDispatcher(p).forward(request, response);
	}catch(Exception e){}
%>
</body>
</html>