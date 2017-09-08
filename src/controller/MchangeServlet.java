package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;
public class MchangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MchangeServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String pass=request.getParameter("pass");
String pass1=request.getParameter("pass1");
String pass2=request.getParameter("pass2");
HttpSession session=request.getSession();
String oldpass=(String)session.getAttribute("pass");
String uname=(String)session.getAttribute("username");
String page="";
String sql="update managers set(password)=('"+pass1+"') where username='"+uname+"'";
if(pass.equals("")||pass1.equals("")||pass2.equals(""))
{
	page="/mchangepassword.jsp?msg=abc";
}
else if(oldpass.equals(pass))
{
	if(pass1.equals(pass2))
	{
		Model m=new Model();
		m.setPass(pass1);
		m.setUsername(uname);
		try {
			int i=Dao.change(m,sql);
			if(i!=0)
			{
				page="/login.jsp?msg=qwerty";
			}
			else
			{
				page="/mchangepassword.jsp?msg=asd";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	else
	{
		page="/mchangepassword.jsp?msg=zxc";
	}
}
else
{
	page="/mchangepassword.jsp?msg=asdf";
}
		
getServletContext().getRequestDispatcher(page).forward(request, response);
	}

}
