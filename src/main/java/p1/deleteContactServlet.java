package p1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/deletecontact")
public class deleteContactServlet extends HttpServlet {
 protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
	 int id=Integer.parseInt(req.getParameter("id"));
	 boolean status=new contactDAO().deleteContact(id);
	 if(status) {
		 res.sendRedirect("Viewcontact");
	 }
 }
}
