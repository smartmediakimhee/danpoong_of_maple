package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ImotionAnalysis;
import com.DAO.ReviewDTO;
import com.DAO.WebDAO;

@WebServlet("/ReviewInsertService")
public class ReviewInsertService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String drink_name = request.getParameter("drink_name");
		String review_content = request.getParameter("review_content");
		Double score = Double.parseDouble(request.getParameter("score"));
		
		WebDAO dao = WebDAO.getInstance();
		
		try {
			String author = dao.selectNick(id);
			String drink_id = dao.selectDrinkId(drink_name);
			
			int cnt = dao.insertReview(new ReviewDTO(drink_id, score, author, review_content));
			
			if(cnt > 0) {
				response.sendRedirect("RankService");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
