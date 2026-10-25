package p1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;


public class userDAO {
public Userbean ub=null;

public Userbean loginUser(HttpServletRequest req) {
	try {
		Connection con=DBConnect.getCon();
		PreparedStatement ps=con.prepareStatement("select id,name,email,password from users where email=? and password=?");
		ps.setString(1,req.getParameter("email"));
		ps.setString(2,req.getParameter("password"));
		ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				 ub=new Userbean();
				ub.setId(rs.getInt("id"));
				ub.setName(rs.getString("name"));
				ub.setEmail(rs.getString("email"));
				ub.setPassword(rs.getString("password"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
	}
	
	
	return ub;
}
public int register(HttpServletRequest req) {
	int i=0;
	try {
		Connection con=DBConnect.getCon();
		PreparedStatement ps=con.prepareStatement("insert into users(name,email,password) values(?,?,?)");
		ps.setString(1,req.getParameter("name"));
		ps.setString(2,req.getParameter("email"));
		ps.setString(3,req.getParameter("password"));
		i=ps.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return i;
}
}
