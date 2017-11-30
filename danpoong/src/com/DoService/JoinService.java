package com.DoService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DoDAO.DoDAO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
		String nick = request.getParameter("nick");
		int age = Integer.parseInt(request.getParameter("age"));
		String location = request.getParameter("location");
		
		DoDAO dao = DoDAO.getInstance();
		
		try {
			int cnt = dao.Join(id, pw, nick, age, location);
			
			if(cnt > 0) {
				response.sendRedirect("main/main.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
