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
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();
		String branch=(String)session.getAttribute("branch");
		String username=(String)session.getAttribute("username");
		String br=request.getParameter("branch");
		String mn=request.getParameter("mname");
		String uname=request.getParameter("username");
		String doj=request.getParameter("doj");
		String dob=request.getParameter("dob");
		String salary=request.getParameter("salary");
		String page="";
		String sql="update managers set (mname,doj,dob,salary)=('"+mn+"','"+doj+"','"+dob+"','"+salary+"') where branch='"+branch+"' and username='"+username+"' ";
		
		if(mn.equals("")||doj.equals("")||dob.equals("")||salary.equals(""))
		{
			page="/mupdate.jsp?msg=abc";
		}
		else
		{
			Model m=new Model();
			m.setBranch(br);
			m.setMname(mn);
			m.setUsername(uname);	
			m.setDoj(doj);
			m.setDob(dob);
			m.setSalary(salary);
			try {
				int i=Dao.update(m,sql);
				
				if(i!=0)
				{
					page="/mprofile.jsp?msg=qwerty";
				}
				else
				{
					page="/mupdate.jsp?msg=asd";
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}	
			}
			getServletContext().getRequestDispatcher(page).forward(request, response);		
	}

}
