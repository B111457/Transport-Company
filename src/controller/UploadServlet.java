package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UploadServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

String path=getServletContext().getRealPath("\\images\\");

HttpSession session=request.getSession();
String email=(String)session.getAttribute("email");
String path1=path+email+".jpg";
System.out.println(path1);
MultipartRequest mr=new MultipartRequest(request, path,10*1024*1024);
File f2=mr.getFile("file");
File f1=new File(path1);		
	f1.delete();
	f2.renameTo(f1);
	response.sendRedirect("profile.jsp");
		
		
		
		
		
		
		
		
		
	}

}
