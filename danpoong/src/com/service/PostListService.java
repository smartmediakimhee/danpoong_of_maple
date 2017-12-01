package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDTO;
import com.DAO.WebDAO;

@WebServlet("/PostListService")
public class PostListService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int btn_num = 0;
		
		WebDAO dao = WebDAO.getInstance();
		ArrayList<PostDTO> post_list = null;
		HttpSession session = request.getSession();
		try {
			post_list = dao.selectPostAll();
			
			if(post_list != null) {
				int total_num = post_list.get(0).getNum();
				btn_num = total_num%10 == 0? total_num/10:total_num/10 + 1;
				/*request.setAttribute("post_list", post_list);
				request.setAttribute("btn_num", btn_num);*/
				session.setAttribute("post_list", post_list);
				session.setAttribute("btn_num", btn_num);
			} else {
				System.out.println("조회 결과가 없음");
			}
			
			response.sendRedirect("main/Community.jsp");
			/*RequestDispatcher dis = request.getRequestDispatcher("main/Community.jsp");
			dis.forward(request, response);*/
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
