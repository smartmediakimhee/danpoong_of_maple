package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReviewInsertService")
public class ReviewInsertService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String drink_name = request.getParameter("drink_name");
		String review_content = request.getParameter("review_content");
		String score = request.getParameter("score");
		
		
		System.out.println(id);
		System.out.println(drink_name);
		System.out.println(review_content);
		System.out.println(score);
	}

}
