package p1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/updatecontact")
public class updateContactServlet extends HttpServlet{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
	contactbean c=new contactbean();
	int id=Integer.parseInt(req.getParameter("id"));
	c.setName(req.getParameter("name"));
	c.setEmail(req.getParameter("email"));
	c.setPhno(req.getParameter("phno"));
	c.setAbt(req.getParameter("abt"));
	c.setId(id);
	boolean status= new contactDAO().updatecontact(c);
	if(status) {
		res.sendRedirect("Viewcontact");
	}
}
	
}
