package com;

import java.sql.*;


public class empUserDAO {
	public empUserModel checkLogin(String empemail, String emppassword) throws SQLException,
    ClassNotFoundException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/users",
		 "root", "");
		 
		 String sql = "SELECT * FROM employees WHERE empemail = ? and emppassword = ?";
	        
		 PreparedStatement statement = connection.prepareStatement(sql);
	     statement.setString(1, empemail);
	     statement.setString(2, emppassword);
	 
	     ResultSet result = statement.executeQuery();
	     
	     empUserModel user = null;
	     
	        if (result.next()) {
	            user = new empUserModel();
	            user.setEmpname(result.getString("empname"));
	            user.setEmpemail(empemail);
	        }
	 
	        connection.close();
	 
	        return user;
	    }
}