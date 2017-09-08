package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;

/**
 * Servlet implementation class FindServlet
 */
public class ServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServiceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			HttpSession session=request.getSession();
		String frm=request.getParameter("from");
		String to=request.getParameter("to");
		session.setAttribute("from",frm);
		session.setAttribute("to",to);
		String sql="select * from install where from='"+frm+"' and to='"+to+"'";
		String p="";
		Model m=new Model();
		m.setFrom(frm);
		m.setTo(to);
		ResultSet rs=Dao.getValues(m,sql);
		if(rs.next())
		{
			p="/trace.jsp?msg='"+frm+"'&msg1='"+to+"'";
		}
		else
		{
			p="/services.jsp";
		}
		
		getServletContext().getRequestDispatcher(p).forward(request, response);
	}catch(Exception e){}

}
	}
