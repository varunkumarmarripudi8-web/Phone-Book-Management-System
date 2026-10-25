package p1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class contactDAO {
	public static int addContact(HttpServletRequest req) {
		int i=0;
		try {
		Connection con=DBConnect.getCon();
		PreparedStatement ps=con.prepareStatement(
		"insert into contact(name,email,phno,abt) values(?,?,?,?)");
		ps.setString(1, req.getParameter("name"));
		ps.setString(2, req.getParameter("email"));
		ps.setString(3, req.getParameter("phno"));
		ps.setString(4, req.getParameter("abt"));
		i=ps.executeUpdate();

		}catch(Exception e) {
		e.printStackTrace();
		}
		return i;
		}
	public List<contactbean>getAllContacts(){
		List<contactbean> list=new ArrayList<>();
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement ps=con.prepareStatement("select * from contact");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				contactbean c=new contactbean();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setEmail(rs.getString("email"));
				c.setPhno(rs.getString("phno"));
				c.setAbt(rs.getString("abt"));
				list.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public contactbean getContactbyid(int id) {
		contactbean c=null;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement ps=con.prepareStatement("select * from contact where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				c=new contactbean();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setEmail(rs.getString("email"));
				c.setPhno(rs.getString("phno"));
				c.setAbt(rs.getString("abt"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c;
	}
	public boolean updatecontact(contactbean c) {
		boolean status=false;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement ps=con.prepareStatement("update contact set name=?,email=?,phno=?,abt=? where id=?");
			ps.setString(1,c.getName());
			ps.setString(2,c.getEmail());
			ps.setString(3,c.getPhno());
			ps.setString(4,c.getAbt());
			ps.setInt(5,c.getId());
			int i=ps.executeUpdate();
			if(i>0) {
				status=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	 return status;	
	}
	public boolean deleteContact(int id) {
		boolean status=false;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement ps=con.prepareStatement("delete from contact where id=?");
			ps.setInt(1,id);
			int i=ps.executeUpdate();
			if(i>0) {
				status=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
		}
