package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/logout")
public class logoutServlet extends HttpServlet{
 protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
	 res.setContentType("text/html");
	 PrintWriter pw=res.getWriter();
	 HttpSession hs=req.getSession();
	 hs.removeAttribute("user");
	 res.sendRedirect("Login.jsp");
 }
}
