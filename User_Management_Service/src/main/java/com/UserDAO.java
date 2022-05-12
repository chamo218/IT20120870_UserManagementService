package com;
import java.sql.*;

public class UserDAO {
	public UserModel checkLogin(String email, String password) throws SQLException,
    ClassNotFoundException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/users",
		 "root", "");
		 
		 String sql = "SELECT * FROM users WHERE email = ? and password = ?";
	        
		 PreparedStatement statement = connection.prepareStatement(sql);
	     statement.setString(1, email);
	     statement.setString(2, password);
	 
	     ResultSet result = statement.executeQuery();
	     
	     UserModel user = null;
	     
	        if (result.next()) {
	            user = new UserModel();
	            user.setName(result.getString("name"));
	            user.setEmail(email);
	        }
	 
	        connection.close();
	 
	        return user;
	    }
}