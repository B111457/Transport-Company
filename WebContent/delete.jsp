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
		String tno=request.getParameter("msg");
		String sql="delete from install where tno='"+tno+"'";
		String p="";
		Model m=new Model();
		m.setTno(tno);
		
		int i=Dao.delete(m,sql);
		if(i!=0)
		{
			p="/findtruck.jsp?";
		}
		else
		{
			p="/view.jsp";
		}
		
		getServletContext().getRequestDispatcher(p).forward(request, response);
	}catch(Exception e){}
%>
</body>
</html>