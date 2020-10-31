package com.cms.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
public static Connection getConnection() throws ClassNotFoundException, SQLException{
	Class.forName("com.mysql.jdbc.Driver");
Connection connection =	DriverManager.getConnection("jdbc:mysql://localhost:3306/complain", "root", "");
return connection;
}
public static void main(String []a){
	try {
		Connection connection = DBUtil.getConnection();
		System.out.println(connection);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
