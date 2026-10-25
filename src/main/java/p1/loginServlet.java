package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/login")
public class loginServlet extends HttpServlet{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
	PrintWriter pw=res.getWriter(); 
	res.setContentType("text/html");
	Userbean Userbean=new userDAO().loginUser(req);
	if(Userbean==null) {

        req.setAttribute("error", "Invalid Email or Password");
        RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
        rd.forward(req, res);	
        }else {
		HttpSession hs=req.getSession();
		hs.setAttribute("Userbean",Userbean);
	    res.sendRedirect(req.getContextPath()+"/index.jsp");
		
	}
	
	
}
}