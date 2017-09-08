package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import mail.PasswordMail;
import model.Model;
public class SendMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SendMail() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String uname=request.getParameter("username");
String page="";
String sql="select * from managers where username='"+uname+"'";
if(uname.equals(""))
{
	page="/mforgotpassword.jsp?msg=abc";
}
else
{
	Model m=new Model();
	m.setUsername(uname);
	try {
		ResultSet rs=Dao.checkEmail(m,sql);
		if(rs.next())
		{
String password=rs.getString("password");
HttpSession session=request.getSession();
session.setAttribute("password", password);
session.setAttribute("username", uname);
String data="123456789012345678901234567890123456890123456789012345678901234567890";
String otp="";
char ch[]=data.toCharArray();
for(int i=0;i<4;i++)
{
int j=(int)((Math.random())*70);
//.123*70---- 8.610---- 8
otp=otp+ch[j];//9123
}
session.setAttribute("otp", otp);
PasswordMail pm=new PasswordMail();
boolean status=pm.sendMail(uname, otp);
if(status)
{
	page="/motp.jsp?msg=qwerty";
}
else
{
	page="/mforgotpassword.jsp?msg=zxc";
}
		}
		else
		{
			page="/mforgotpassword.jsp?msg=asd";
		}

} catch (SQLException e) {
e.printStackTrace();
	} catch (MessagingException e) {
		e.printStackTrace();
	}
}
		
getServletContext().getRequestDispatcher(page).forward(request, response);			
		
		
	}

}
