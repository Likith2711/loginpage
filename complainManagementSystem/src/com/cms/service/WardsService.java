package com.cms.service;

import com.cms.dao.WardsDAO;
import com.cms.to.WardsTO;

public class WardsService {
WardsDAO wardsDAO = new WardsDAO();
	public WardsTO addWard(WardsTO wardsTO) {
		// TODO Auto-generated method stub
		return wardsDAO.addWard(wardsTO);
	}

}
