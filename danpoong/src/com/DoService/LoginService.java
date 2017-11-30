package com.DoService;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DoDAO.DoDAO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			DoDAO dao = DoDAO.getInstance();
			try {
				int cnt = dao.Login(id, pw);
				
				System.out.println(cnt);
				if(cnt == 1) {
					HttpSession session = request.getSession();
					session.setAttribute("id", id);
					
					response.sendRedirect("main/main.jsp");
				} else {
					response.setContentType("text/html; charset=euc-kr");
					PrintWriter out = response.getWriter();
					out.print("비밀번호나 아이디를 다시 확인하세요");
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
