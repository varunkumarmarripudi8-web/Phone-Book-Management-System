package p1;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Viewcontact")
public class ViewContactServlet extends HttpServlet{
protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
	List<contactbean> list=new contactDAO().getAllContacts();
	req.setAttribute("ContactList", list);
	RequestDispatcher rd=req.getRequestDispatcher("Viewcontact.jsp");
	rd.forward(req, res);
}
}
