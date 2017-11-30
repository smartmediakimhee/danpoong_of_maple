package com.DoService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DoDAO.DoDAO;

@WebServlet("/updateService")
public class updateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		int age = Integer.parseInt(request.getParameter("age"));
		String location = request.getParameter("location");
		
		String id = (String)session.getAttribute("id");
		
		
		DoDAO dao = DoDAO.getInstance();
		
		try {
			int cnt = dao.Update(pw, nick, age, location, id);
			
			System.out.println(id);
			
			if(cnt > 0) {
			response.sendRedirect("main/MyPage.jsp");
			
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
