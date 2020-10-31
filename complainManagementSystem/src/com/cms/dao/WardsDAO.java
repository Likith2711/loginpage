package com.cms.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cms.to.WardsTO;
import com.cms.util.DBUtil;

public class WardsDAO {

	public WardsTO addWard(WardsTO wardsTO) {
		Connection connection;
		try {
			connection = DBUtil.getConnection();
			Statement statement = connection.createStatement();
			if(wardsTO.getWardsID() == 0){
		int a =	statement.executeUpdate("INSERT INTO wards(WARDS_NAME)VALUES('"+wardsTO.getWardName()+"');");
		if (a == 1) {

			ResultSet resultSet = statement
					.executeQuery("SELECT `WARDS_ID` FROM `wards` ORDER BY WARDS_ID DESC LIMIT 1");
			while (resultSet.next()) {
				wardsTO.setWardsID(resultSet.getInt("WARDS_ID"));
			}
		}
			}else{
				statement.executeUpdate("update wards set WARDS_NAME = '"+wardsTO.getWardName()+"' where WARDS_ID = "+wardsTO.getWardsID());
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return wardsTO;
	}

}
