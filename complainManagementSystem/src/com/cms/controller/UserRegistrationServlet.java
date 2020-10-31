package com.cms.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.service.LoginCheckService;
import com.cms.service.UserRegistrationService;
import com.cms.to.LoginDetailsTO;
import com.cms.to.UserRegistrationTO;

public class UserRegistrationServlet extends HttpServlet {
LoginDetailsTO detailsTO = new LoginDetailsTO();
UserRegistrationTO registrationTO = new UserRegistrationTO();
UserRegistrationService registrationService = new UserRegistrationService();
LoginCheckService checkService = new LoginCheckService();
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		detailsTO.setUserName(request.getParameter("username"));
		detailsTO.setPassword(request.getParameter("password"));
		detailsTO.setLoginType("user");
		detailsTO.setStatus("open");
		detailsTO = checkService.save(detailsTO);
		if(detailsTO.getLoginID() != 0){
			registrationTO.setUserName(request.getParameter("name"));
			registrationTO.setFatherName(request.getParameter("fathername"));
			registrationTO.setMotherName(request.getParameter("mothername"));
			registrationTO.setAddress(request.getParameter("address"));
			registrationTO.setPhone(request.getParameter("phone"));
			registrationTO.setMail(request.getParameter("email"));
			String requestDate = request.getParameter("dob");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date date = sdf.parse(requestDate);
				registrationTO.setDob(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		registrationTO.setLoginID(detailsTO.getLoginID());
		registrationTO = registrationService.saveRegistration(registrationTO);
		if(registrationTO.getUserRegID() != 0){

			RequestDispatcher dispatcher = request
					.getRequestDispatcher("./jsp/userregistrationsucess.jsp");
			dispatcher.forward(request, response);
	
		}
		else{
			checkService.deleteLogin(detailsTO);


			RequestDispatcher dispatcher = request
					.getRequestDispatcher("./html/index.html");
			dispatcher.forward(request, response);
	
		
			
		}
		}
	}
}
