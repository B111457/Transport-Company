package controller;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mail.PasswordMail;
public class OtpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OtpServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String otp=request.getParameter("otp");
HttpSession session=request.getSession();
String otp1=(String)session.getAttribute("otp");
String emailid=(String)session.getAttribute("emailid");
String password=(String)session.getAttribute("password");
String page="";
if(otp.equals(otp1))
{
	PasswordMail pm=new PasswordMail();
	boolean status;
	try {
		status = pm.sendMail1(emailid,password);
		if(status)
		{
			page="/login.jsp?msg=qwerty";
		}
		else
		{
			page="/login.jsp?msg=zxc";
		}
	} catch (MessagingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
getServletContext().getRequestDispatcher(page).forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
