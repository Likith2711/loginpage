package com.cms.service;

import com.cms.dao.LoginCheckDAO;
import com.cms.to.LoginDetailsTO;

public class LoginCheckService {
	LoginCheckDAO loginCheckDAO = new LoginCheckDAO();
public LoginDetailsTO checkLogin(LoginDetailsTO loginDetailsTO){
	return loginCheckDAO.checkLogin(loginDetailsTO);	
}
public LoginDetailsTO save(LoginDetailsTO detailsTO) {
	// TODO Auto-generated method stub
	return loginCheckDAO.save(detailsTO);
}

public boolean deleteLogin(LoginDetailsTO detailsTO){
return loginCheckDAO.deleteLogin(detailsTO);	
}
	
}
