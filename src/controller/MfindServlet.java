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
public class MfindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MfindServlet() {
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
		String br=request.getParameter("branch");
		String uname=request.getParameter("username");
		session.setAttribute("branch",br);
		session.setAttribute("username",uname);
		String sql="select * from managers where branch='"+br+"' and username='"+uname+"' ";
		String p="";
		Model m=new Model();
		m.setBranch(br);
		m.setUsername(uname);
		ResultSet rs=Dao.getValues(m,sql);
		if(rs.next())
		{
			p="/view1.jsp?msg='"+rs.getString("branch")+"'&msg1='"+rs.getString("username")+"'";
		}
		else
		{
			p="/findmanager.jsp";
		}
		
		getServletContext().getRequestDispatcher(p).forward(request, response);
	}catch(Exception e){}

}
	}
