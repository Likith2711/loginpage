package com.cms.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cms.service.LoginCheckService;
import com.cms.to.LoginDetailsTO;

public class CheckLoginServlet extends HttpServlet {
	LoginDetailsTO loginDetailsTO = new LoginDetailsTO();
	LoginCheckService loginCheckService = new LoginCheckService();

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
loginDetailsTO.setLoginID(0);
		System.out.println(request.getParameter("username"));
		System.out.println(request.getParameter("type"));
		System.out.println(request.getParameter("password"));
		loginDetailsTO.setPassword(request.getParameter("password"));
		loginDetailsTO.setUserName(request.getParameter("username"));
		loginDetailsTO.setLoginType(request.getParameter("type"));
		loginDetailsTO = loginCheckService.checkLogin(loginDetailsTO);
		RequestDispatcher dispatcher = null;
		if (loginDetailsTO.getLoginID() != 0) {
			if (loginDetailsTO.getLoginType().equalsIgnoreCase("user")) {
				HttpSession session = request.getSession();
				session.setAttribute("loginDetailsTO", loginDetailsTO);
				dispatcher = request
						.getRequestDispatcher("./jsp/userSuccess.jsp");

				dispatcher.forward(request, response);
			} else if (loginDetailsTO.getLoginType().equalsIgnoreCase("ward")) {
				HttpSession session = request.getSession();
				session.setAttribute("loginDetailsTO", loginDetailsTO);
				
				dispatcher = request
						.getRequestDispatcher("./jsp/wardSuccess.jsp");
				dispatcher.forward(request, response);

			} else {
				HttpSession session = request.getSession();
				session.setAttribute("loginDetailsTO", loginDetailsTO);
				
				dispatcher = request
						.getRequestDispatcher("./jsp/adminSuccess.jsp");
				dispatcher.forward(request, response);

			}
		} else {
			dispatcher = request.getRequestDispatcher("./html/index.html");
			dispatcher.forward(request, response);
		}
	}
}
