package com.cms.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.service.WardsService;
import com.cms.to.WardsTO;

public class WardsServlet extends HttpServlet{
WardsService wardsService = new WardsService();
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		WardsTO wardsTO = new WardsTO();
		wardsTO.setWardsID(Integer.valueOf(request.getParameter("id")));
		wardsTO.setWardName(request.getParameter("ward"));
		wardsTO =	wardsService.addWard(wardsTO);
		if(wardsTO.getWardsID() != 0){


		RequestDispatcher	dispatcher = request
					.getRequestDispatcher("./jsp/adminSuccess.jsp");
			dispatcher.forward(request, response);

		
		}
	}
}
