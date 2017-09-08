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
public class TruckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TruckServlet() {
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
		session.setAttribute("branch",br);
		String sql="select * from install where branch='"+br+"'";
		String p="";
		Model m=new Model();
		m.setBranch(br);
		ResultSet rs=Dao.getValues(m,sql);
		if(rs.next())
		{
			p="/trucks.jsp?msg='"+rs.getString("branch")+"'";
		}
		else
		{
			p="/towards.jsp";
		}
		
		getServletContext().getRequestDispatcher(p).forward(request, response);
	}catch(Exception e){}

}
	}
