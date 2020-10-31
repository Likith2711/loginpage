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
import javax.servlet.http.HttpSession;

import com.cms.service.ComplainsService;
import com.cms.to.ComplainsTO;
import com.cms.to.LoginDetailsTO;

public class ComplainsServlet extends HttpServlet{
ComplainsTO complainsTO = new ComplainsTO();
ComplainsService complainsService = new ComplainsService();
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try{
		complainsTO.setComplaintType(request.getParameter("cType"));
		complainsTO.setComplaintsDesc(request.getParameter("cdis"));
		complainsTO.setAddress(request.getParameter("address"));
		complainsTO.setWardsID(Integer.valueOf(request.getParameter("ward")));
		String requestDate = request.getParameter("cd");
		HttpSession session = request.getSession();
	LoginDetailsTO detailsTO =	(LoginDetailsTO) session.getAttribute("loginDetailsTO");
	complainsTO.setLoginID(detailsTO.getLoginID());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = sdf.parse(requestDate);
			complainsTO.setCreatedDate(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		complainsTO = complainsService.createComplaint(complainsTO);
	RequestDispatcher	dispatcher = request
				.getRequestDispatcher("./jsp/userSuccess.jsp");

		dispatcher.forward(request, response);
		}catch (Exception e) {
			RequestDispatcher	dispatcher = request
					.getRequestDispatcher("./jsp/userSuccess.jsp");

			dispatcher.forward(request, response);
			// TODO: handle exception
		}

	}
}
