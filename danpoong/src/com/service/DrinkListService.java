package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DrinkInfoDTO;
import com.DAO.ReviewDTO;
import com.DAO.WebDAO;

@WebServlet("/DrinkListService")
public class DrinkListService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String drink_id = request.getParameter("drink_id");
		
		WebDAO dao = WebDAO.getInstance();
		ArrayList<ReviewDTO> review_list = null;
		ArrayList<DrinkInfoDTO> drink_list = null;
		HttpSession session = request.getSession();
		String url = null;
		
		try {
			review_list = dao.selectReviewAll(drink_id);
			drink_list = dao.selectDrinkInfo(drink_id);
			
			if(drink_list != null) {
				session.setAttribute("drink_list", drink_list);
				session.setAttribute("review_list", review_list);
			}
			
			if(drink_id.equals("01")) {
				url = "main/beerinfo.jsp";
			} else if(drink_id.equals("02")) {
				url = "main/sojuinfo.jsp";
			} else if(drink_id.equals("04")) {
				url = "main/whiskyinfo.jsp";
			} else if(drink_id.equals("03")) {
				url = "main/wineinfo.jsp";
			} else if(drink_id.equals("05")) {
				url = "main/macinfo.jsp";
			} else if(drink_id.equals("06")) {
				url = "main/jeoninfo.jsp";
			} else if(drink_id.equals("08")) {
				url = "main/coginfo.jsp";
			}
			
			response.sendRedirect(url);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
