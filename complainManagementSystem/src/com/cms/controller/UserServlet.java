package com.cms.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("fathername"));
		System.out.println(request.getParameter("dob"));
		System.out.println(request.getParameter("mothername"));
		System.out.println(request.getParameter("address"));
		System.out.println(request.getParameter("phone"));
		System.out.println(request.getParameter("username"));
		System.out.println(request.getParameter("password"));
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("./jsp/userregistrationsucess.jsp");
		dispatcher.forward(request, response);
	
		
	}
}
