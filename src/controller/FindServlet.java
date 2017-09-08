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
public class FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindServlet() {
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
		String tno=request.getParameter("tno");
		session.setAttribute("tno",tno);
		String sql="select * from install where tno='"+tno+"'";
		String p="";
		Model m=new Model();
		m.setTno(tno);
		ResultSet rs=Dao.getValues(m,sql);
		if(rs.next())
		{
			p="/view.jsp?msg='"+rs.getString("tno")+"'";
		}
		else
		{
			p="/findtruck.jsp";
		}
		
		getServletContext().getRequestDispatcher(p).forward(request, response);
	}catch(Exception e){}

}
	}
