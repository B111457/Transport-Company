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
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String br=request.getParameter("branch");
		String uname=request.getParameter("username");
		String pass=request.getParameter("pass");
		String page="";
		String sql="select * from managers where branch='"+br+"' and username='"+uname+"' and password='"+pass+"'";
		HttpSession session =request.getSession();
		session.setMaxInactiveInterval(20*60);
		session.setAttribute("branch", br);
		session.setAttribute("username", uname);
		session.setAttribute("pass", pass);
		session.setAttribute("c", "MANAGER");
		System.out.println(br+uname+pass);
		if(br.equals("")||uname.equals("")||pass.equals(""))	
		{
			page="/login.jsp?msg=abc";
		}		
		else
		{
			Model m=new Model();
			m.setBranch(br);
			m.setUsername(uname);
			m.setPass(pass);
			try {
					ResultSet rs=Dao.validate(m,sql);
					if(rs.next())
					{
						page="/mprofile.jsp?msg=qwerty";
						session.setAttribute("login", "true");
					}
					else
					{
						page="/login.jsp?msg=asd";
					}
						
							
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
		getServletContext().getRequestDispatcher(page).forward(request, response);	
	}

}
