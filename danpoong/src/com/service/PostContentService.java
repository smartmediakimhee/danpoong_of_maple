package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDTO;
import com.DAO.WebDAO;

@WebServlet("/PostContentService")
public class PostContentService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		
		WebDAO dao = WebDAO.getInstance();
		PostDTO post = null;
		HttpSession session = request.getSession();
		
		try {
			
			post = dao.selectPostOne(num);
			
			if(post != null) {
				session.setAttribute("post", post);
			} else {
				System.out.println("해당 게시글이 없음");
			}
			
			response.sendRedirect("main/PostContent.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
