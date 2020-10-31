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
import com.cms.service.WardsMemberRegistrationService;
import com.cms.to.LoginDetailsTO;
import com.cms.to.WardsMemberRegistrationTO;

public class WardsMemberRegistrationServlet extends HttpServlet {
WardsMemberRegistrationTO memberRegistrationTO = new WardsMemberRegistrationTO();
LoginDetailsTO detailsTO = new LoginDetailsTO();
LoginCheckService checkService = new LoginCheckService();
WardsMemberRegistrationService memberRegistrationService = new WardsMemberRegistrationService();
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		try {
		memberRegistrationTO.setName(request.getParameter("name"));
		memberRegistrationTO.setFatherName(request.getParameter("fathername"));
		memberRegistrationTO.setQualification(request.getParameter("qualification"));
		memberRegistrationTO.setMail(request.getParameter("mail"));
		String requestDate = request.getParameter("dob");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = sdf.parse(requestDate);
			memberRegistrationTO.setDob(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		memberRegistrationTO.setWardID(new Integer(request.getParameter("ward")));
		detailsTO.setUserName(request.getParameter("username"));
		detailsTO.setPassword(request.getParameter("password"));
		detailsTO.setLoginType("ward");
		detailsTO.setStatus("open");
		detailsTO = checkService.save(detailsTO);
		if(detailsTO.getLoginID() != 0){
			memberRegistrationTO.setLoginID(detailsTO.getLoginID());
			memberRegistrationTO =  memberRegistrationService.save(memberRegistrationTO);
			if(memberRegistrationTO.getWardsMemID() != 0){

					dispatcher = request
						.getRequestDispatcher("./jsp/wardregistrationsucess.jsp");
				
		
			
			}else{

				checkService.deleteLogin(detailsTO);
				dispatcher = request
					.getRequestDispatcher("./jsp/adminSuccess.jsp");
			
	
		
		
			}
		}
		dispatcher.forward(request, response);
		
		} catch (Exception e) {
			// TODO: handle exception
			dispatcher = request
					.getRequestDispatcher("./jsp/adminSuccess.jsp");
			dispatcher.forward(request, response);
		}
	
	}
}
