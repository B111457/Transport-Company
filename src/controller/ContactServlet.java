package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ContactServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

String br=request.getParameter("branch");
String mn=request.getParameter("mname");
String sub=request.getParameter("sub");
String mess=request.getParameter("message");
String page="";
String sql="insert into contact values('"+br+"','"+mn+"','"+sub+"','"+mess+"')";
if(br.equals("")||mn.equals("")||sub.equals("")||mess.equals(""))
{
	page="/contact.jsp?msg=qwerty";
}
else
{
	Model m=new Model();
	m.setBranch(br);
	m.setMname(mn);
	m.setSub(sub);
	m.setMessage(mess);
	
	
	try {
		int i = Dao.send(m,sql);
	
	if(i!=0)
	{
		page="/contact.jsp?msg=qwerty";
	}
	else
	{
	page="/contact.jsp?msg=zxc";	
	}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
		
	getServletContext().getRequestDispatcher(page).forward(request, response);	
	}

}
