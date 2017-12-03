package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ImotionAnalysis;
import com.DAO.WebDAO;

@WebServlet("/RankService")
public class RankService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String drink_id = request.getParameter("drink_id");
		ImotionAnalysis ana = new ImotionAnalysis();
		
		ArrayList<String> temp_list = ana.textImotionAnalysis();
		
		WebDAO dao = WebDAO.getInstance();
		
		double origin_score = 0;
		double pos_num = 0;
		double neg_num = 0;
		
		try {
			origin_score = dao.selectScore(drink_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(temp_list != null) {
			for (int i = 0; i < temp_list.size(); i++) {
				if(i%2==0) {
					pos_num += Double.parseDouble(temp_list.get(i));
				} else {
					neg_num += Double.parseDouble(temp_list.get(i));
				}
			}
		}
		
		double score2 = origin_score*(pos_num/(pos_num+neg_num));
		try {
			int cnt = dao.insertScore2(drink_id, score2);
			
			if(cnt > 0) {
				response.sendRedirect("main/info.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
