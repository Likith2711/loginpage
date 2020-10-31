package com.cms.service;

import com.cms.dao.WardsMemberRegistrationDAO;
import com.cms.to.WardsMemberRegistrationTO;

public class WardsMemberRegistrationService {

	WardsMemberRegistrationDAO memberRegistrationDAO = new WardsMemberRegistrationDAO();
	public WardsMemberRegistrationTO save(
			WardsMemberRegistrationTO memberRegistrationTO) {
		// TODO Auto-generated method stub
		return memberRegistrationDAO.save(memberRegistrationTO);
	}

}
