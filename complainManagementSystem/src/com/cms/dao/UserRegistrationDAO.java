package com.cms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cms.to.UserRegistrationTO;
import com.cms.util.DBUtil;

public class UserRegistrationDAO {

	public UserRegistrationTO saveRegistration(UserRegistrationTO registrationTO) {
		Connection connection;
		try {
			connection = DBUtil.getConnection();
			Statement statement = connection.createStatement();
		int a =	statement.executeUpdate("INSERT INTO userrgistration(USER_NAME,DOB,FATHER_NAME,MOTHER_NAME,ADDRESS,PHONE,LOGIN_ID,MAIL)VALUES('"+registrationTO.getUserName()+"','"+new Date(registrationTO.getDob().getTime())+"','"+registrationTO.getFatherName()+"','"+registrationTO.getMotherName()+"','"+registrationTO.getAddress()+"','"+registrationTO.getPhone()+"',"+registrationTO.getLoginID()+",'"+registrationTO.getMail()+"');");
		if (a == 1) {

			ResultSet resultSet = statement
					.executeQuery("SELECT `USER_REG_ID` FROM `userrgistration` ORDER BY USER_REG_ID DESC LIMIT 1");
			while (resultSet.next()) {
				registrationTO.setUserRegID(resultSet.getInt("USER_REG_ID"));
			}
		}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return registrationTO;
	}

}
