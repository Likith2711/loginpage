package com.cms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cms.to.ComplainsTO;
import com.cms.util.DBUtil;

public class ComplainsDAO {

	public ComplainsTO createComplaint(ComplainsTO complainsTO) {
		Connection connection;
		try {
			connection = DBUtil.getConnection();
			Statement statement = connection.createStatement();
			int userRedID = 0;
			ResultSet resultSet1 = statement
					.executeQuery("SELECT `USER_REG_ID` FROM `userrgistration`where LOGIN_ID = "+complainsTO.getLoginID());
			while (resultSet1.next()) {
				userRedID = resultSet1.getInt("USER_REG_ID");
				
			}
			
		int a =	statement.executeUpdate("INSERT INTO `complains`(`COMPLAINT_TYPE`,`COMPLAINT_DESC`,`CREATED_DATE`,STATUS ,`WARDS_ID`,USER_REG_ID,ADDRESS)VALUES('"+complainsTO.getComplaintType()+"','"+complainsTO.getComplaintsDesc()+"','"+new Date(complainsTO.getCreatedDate().getTime())+"','open',"+complainsTO.getWardsID()+","+userRedID+",'"+complainsTO.getAddress()+"');");
		if (a == 1) {

			ResultSet resultSet = statement
					.executeQuery("SELECT `CID` FROM `complains` ORDER BY CID DESC LIMIT 1");
			while (resultSet.next()) {
				complainsTO.setcID(resultSet.getInt("CID"));
			}
		}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return complainsTO;
	}

	public int update(String comment, int cid) {
		// TODO Auto-generated method stub
		Connection connection;
		int a =0;
		try {
			connection = DBUtil.getConnection();
			Statement statement = connection.createStatement();
a =	statement.executeUpdate("update complains set COMMENT = '"+comment+"' where CID = "+cid);
		}
	 catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return a;
	}

}
