package com.cms.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.service.ComplainsService;


public class CommentServlet extends HttpServlet {
	ComplainsService complainsService = new ComplainsService();
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String cids = request.getParameter("id");
		int cid =Integer.valueOf(cids);
	int a =	complainsService.update(request.getParameter("comment"), cid);
	RequestDispatcher	dispatcher = request
			.getRequestDispatcher("./jsp/userSuccess.jsp");

	dispatcher.forward(request, response);

	}
}
