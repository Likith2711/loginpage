package com.cms.service;

import com.cms.dao.UserRegistrationDAO;
import com.cms.to.UserRegistrationTO;

public class UserRegistrationService {
UserRegistrationDAO registrationDAO = new UserRegistrationDAO();

public UserRegistrationTO saveRegistration(UserRegistrationTO registrationTO) {
	// TODO Auto-generated method stub
	return registrationDAO.saveRegistration(registrationTO);
}
	

}
