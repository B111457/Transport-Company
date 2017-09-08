package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mail.PasswordMail;
import model.Model;
import dao.Dao;

/**
 * Servlet implementation class CreateServlet
 */
public class CreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateServlet() {
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
		String br=request.getParameter("branch");
		String mn=request.getParameter("mname");
		String un=request.getParameter("username");
		String pass=request.getParameter("pass");
		String pass1=request.getParameter("pass1");
		String doj=request.getParameter("doj");
		String dob=request.getParameter("dob");
		String salary=request.getParameter("salary");
		String page="";
		String sql="insert into managers values('"+br+"','"+mn+"','"+un+"','"+pass+"','"+doj+"','"+dob+"','"+salary+"')";
		if(br.equals("")||mn.equals("")||un.equals("")||pass.equals("")||pass1.equals("")||doj.equals("")||dob.equals("")||salary.equals(""))
		{
			page="/create.jsp?msg=abc";//URL Rewriting
		}
		else if(pass.equals(pass1))
		{
			Model m=new Model();	
			m.setBranch(br);
			m.setMname(mn);
			m.setUsername(un);
			m.setPass(pass);
			m.setDoj(doj);
			m.setDob(dob);
			m.setSalary(salary);

		try {
			int i=Dao.insert(m,sql);
			if(i!=0)
			{
				
				page="/profile1.jsp?msg=qwerty";
				PasswordMail pm=new PasswordMail();
				boolean status;
				try {
					status = pm.sendMail2(un,"Your username is:"+un+"\nYour password is: "+pass+"\nYour Branch is: "+br);
					if(status)
					{
						page="/profile1.jsp?msg=qwerty";
					}
					else
					{
						page="/profile1.jsp?msg=zxc";
					}
				} catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else
			{
				page="/create.jsp?msg=asd";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		else
		{
			page="/create.jsp?msg=zxc";
		}
		getServletContext().getRequestDispatcher(page).forward(request, response);
			}
		}

