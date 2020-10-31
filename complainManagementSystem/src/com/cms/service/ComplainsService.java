package com.cms.service;

import com.cms.dao.ComplainsDAO;
import com.cms.to.ComplainsTO;

public class ComplainsService {
ComplainsDAO complainsDAO = new ComplainsDAO();
	public ComplainsTO createComplaint(ComplainsTO complainsTO) {
		// TODO Auto-generated method stub
		return complainsDAO.createComplaint(complainsTO);
	}
	public int update(String comment, int cid) {
		// TODO Auto-generated method stub
		return complainsDAO.update(comment,cid);
	}

}
