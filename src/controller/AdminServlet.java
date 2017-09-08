package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AdminServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String emailid=request.getParameter("emailid");
String password=request.getParameter("password");
String page="";
String sql="select * from admin where emailid='"+emailid+"'and password='"+password+"'";
HttpSession session =request.getSession();
session.setMaxInactiveInterval(20*60);
session.setAttribute("email", emailid);
session.setAttribute("c","ADMIN");
session.setAttribute("password", password);


if(emailid.equals("")||password.equals(""))	
{
page="/admin.jsp?msg=abc";
}		
else
{
	Model m=new Model();
	m.setEmailid(emailid);
	m.setPass(password);
	try {
		ResultSet rs=Dao.validate(m,sql);
		if(rs.next())
		{
			session.setAttribute("login","true");
			page="/profile.jsp?msg=qwerty";
		}
		else
		{
			page="/admin.jsp?msg=asd";
		}
		
getServletContext().getRequestDispatcher(page).forward(request, response);		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}		
	}

}
