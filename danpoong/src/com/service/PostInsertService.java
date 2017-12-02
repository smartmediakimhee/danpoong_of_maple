package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.PostDTO;
import com.DAO.WebDAO;

@WebServlet("/PostInsertService")
public class PostInsertService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String title = request.getParameter("subject");
		String post_content = request.getParameter("content");
		String file = request.getParameter("ex_file");
		
		WebDAO dao = WebDAO.getInstance();
		
		String post_author = null;
		PostDTO post = null;
		int cnt = 0;
		
		try {
			post_author = dao.selectNick(id);
			post = new PostDTO(title, post_author, post_content, file);
			
			cnt = dao.insertPost(post);
			
			if(cnt>0) {
				response.sendRedirect("PostListService?page=1");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
