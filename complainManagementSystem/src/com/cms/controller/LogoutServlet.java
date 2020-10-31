package com.cms.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	HttpSession session = request.getSession();
	session.invalidate();
RequestDispatcher	dispatcher = request.getRequestDispatcher("./html/index.html");
	dispatcher.forward(request, response);

	}
}
