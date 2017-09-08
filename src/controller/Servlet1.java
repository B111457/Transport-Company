package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Servlet1() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
PrintWriter out=response.getWriter();
String path=getServletContext().getRealPath("images");
System.out.println(path);
response.setContentType("text/html");
out.println("<html><head><style>"
+ "img{width:100px;height:120px;border-radius:60px;"
+"img:hover:border-radius:10px;"
+ "border:3px solid black;width:100px;height:120px}");
out.println("</style></head><body>");
File folder=new File(path);
File [] files=folder.listFiles();
for(File file:files)
{
out.println("<img src=\"images\\"+file.getName()+"\">");
	
}
out.println("</body></html>");

		
		
		
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
