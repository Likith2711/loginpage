package com.cms.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cms.to.LoginDetailsTO;
import com.cms.util.DBUtil;

public class LoginCheckDAO {
	public LoginDetailsTO checkLogin(LoginDetailsTO loginDetailsTO){
		try {
			Connection connection = DBUtil.getConnection();
			Statement statement = connection.createStatement();
		ResultSet resultSet =	statement.executeQuery("SELECT * FROM logindetails WHERE USER_NAME = '"+loginDetailsTO.getUserName()+"' && PASSWORD = '"+loginDetailsTO.getPassword()+"' && LOGIN_TYPE = '"+loginDetailsTO.getLoginType()+"';");
		while (resultSet.next()) {
			loginDetailsTO.setLoginID(resultSet.getInt("LOGIN_ID"));
		}} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return loginDetailsTO;
	}

	public LoginDetailsTO save(LoginDetailsTO detailsTO) {
		Connection connection;
		try {
			connection = DBUtil.getConnection();
			Statement statement = connection.createStatement();
		int a =	statement.executeUpdate("INSERT INTO logindetails(USER_NAME,PASSWORD,LOGIN_TYPE,STATUS)VALUES('"+detailsTO.getUserName()+"','"+detailsTO.getPassword()+"','"+detailsTO.getLoginType()+"','"+detailsTO.getStatus()+"');");
		if (a == 1) {

			ResultSet resultSet = statement
					.executeQuery("SELECT `LOGIN_ID` FROM `logindetails` ORDER BY LOGIN_ID DESC LIMIT 1");
			while (resultSet.next()) {
				detailsTO.setLoginID(resultSet.getInt("LOGIN_ID"));
			}
		}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return detailsTO;
	}

	public boolean deleteLogin(LoginDetailsTO detailsTO) {
		Connection connection;
		try {
			connection = DBUtil.getConnection();
			Statement statement = connection.createStatement();
		int a =	statement.executeUpdate("DELETE FROM `logindetails`  WHERE `LOGIN_ID` = "+detailsTO.getLoginID()+";");
		if (a == 1) {
return true;
		
		}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}
}
