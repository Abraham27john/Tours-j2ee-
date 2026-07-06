package com.dcl.tours.daoImplClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dcl.tours.daoInterfaces.UserDAO;
import com.dcl.tours.dto.User;
import com.dcl.tours.utility.Connector;

public class UserDAOImpl implements UserDAO{
	
	private Connection con;
	
	public UserDAOImpl() {
		this.con=Connector.requestConnection();
	}

	@Override
	public void createUser(User u) {
		String query="Insert into users(uname,phno,email,password) values(?,?,?,?)";
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, u.getUname());
			ps.setString(2, u.getPhno());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPassword());
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(i>0) {
			System.out.println("user added");
		}
		
	}

	@Override
	public void updateUser(User u) {
		// TODO Auto-generated method stub
		String query="Update users set uname=?, phno=?, email=?, password=?, where uid=?";
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, u.getUname());
			ps.setString(2, u.getPhno());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPassword());
			ps.setInt(5, u.getUid());
			i=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(i>0) {
			System.out.println("user updated successfully");
		}
		
	}

	@Override
	public void deleteUser(Integer u) {
		// TODO Auto-generated method stub
		String query="delete from users where uid=?";
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, u);
			i=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(i>0) {
			System.out.println("user deleted");
		}
		
	}

	@Override
	public List<User> getAllUser() {
		List<User> userlist=new ArrayList<>();
		User u=null;
		String query="select * from users";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				u=new User();
				u.setUid(rs.getInt("uid"));
				u.setUname(rs.getString("unmae"));
				u.setPhno(rs.getString("phno"));
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));
				userlist.add(u);
				System.out.println("user added");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return userlist;
	}

	@Override
	public List<User> getUserById(Integer id) {
		List<User> userlist=new ArrayList<>();
		User u=null;
		String query="select * from users where uid=?";
		try {
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				u=new User();
				u.setUid(rs.getInt("uid"));
				u.setUname(rs.getString("unmae"));
				u.setPhno(rs.getString("phno"));
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));
				userlist.add(u);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return userlist;
	}

}
