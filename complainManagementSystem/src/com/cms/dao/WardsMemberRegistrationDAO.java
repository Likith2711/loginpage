package com.cms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cms.to.WardsMemberRegistrationTO;
import com.cms.util.DBUtil;

public class WardsMemberRegistrationDAO {

	public WardsMemberRegistrationTO save(
			WardsMemberRegistrationTO memberRegistrationTO) {
		Connection connection;
		try {
			connection = DBUtil.getConnection();
			Statement statement = connection.createStatement();
		int a =	statement.executeUpdate("INSERT INTO wardsmemberregistration(NAME,DOB,FATHER_NAME,QUALIFACTION,WARDS_ID,LOGIN_ID,MAIL)VALUES('"+memberRegistrationTO.getName()+"','"+new Date(memberRegistrationTO.getDob().getTime())+"','"+memberRegistrationTO.getFatherName()+"','"+memberRegistrationTO.getQualification()+"',"+memberRegistrationTO.getWardID()+","+memberRegistrationTO.getLoginID()+",'"+memberRegistrationTO.getMail()+"');");
		if (a == 1) {

			ResultSet resultSet = statement
					.executeQuery("SELECT `WARDS_MEM_ID` FROM `wardsmemberregistration` ORDER BY WARDS_MEM_ID DESC LIMIT 1");
			while (resultSet.next()) {
				memberRegistrationTO.setWardsMemID(resultSet.getInt("WARDS_MEM_ID"));
			}
		}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return memberRegistrationTO;
	}

}
