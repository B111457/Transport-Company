package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;

/**
 * Servlet implementation class InstallServlet
 */
public class InstallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InstallServlet() {
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
		
		String mdl=request.getParameter("model");
		String tn=request.getParameter("tno");
		String inc=request.getParameter("insurance");
		String cn=request.getParameter("cname");
		String own=request.getParameter("owner");
		String mob=request.getParameter("mobile");
		String mob1=request.getParameter("mobile1");
		String frm=request.getParameter("from");
		String to=request.getParameter("to");
		String br=request.getParameter("branch");
		String page="";
		String sql="insert into install values('"+mdl+"','"+tn+"','"+inc+"','"+cn+"','"+own+"','"+mob+"','"+frm+"','"+to+"','"+br+"')";
		if(mdl.equals("")||tn.equals("")||inc.equals("")||cn.equals("")||own.equals("")||mob.equals("")|| mob1.equals("")||frm.equals("")||to.equals(""))
		{
			page="/install.jsp?msg=abc";//URL Rewriting
		}
		else if(mob.equals(mob1))
		{
			Model m=new Model();	
			m.setModel(mdl);
			m.setTno(tn);
			m.setInsurance(inc);
			m.setCname(cn);
			m.setOwner(own);
			m.setMobile(mob);
			m.setFrom(frm);
			m.setTo(to);
			m.setBranch(br);
		try {
			int i=Dao.insert(m,sql);
			if(i!=0)
			{
				page="/profile1.jsp?msg=qwerty";
			}
			else
			{
				page="/install.jsp?msg=asd";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		else
		{
			page="/install.jsp?msg=zxc";
		}
		getServletContext().getRequestDispatcher(page).forward(request, response);
			}
		}


	
