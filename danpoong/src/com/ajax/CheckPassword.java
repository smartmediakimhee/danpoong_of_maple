package com.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckPassword")
public class CheckPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pw2");
		
		System.out.println("�Ѱܹ��� �� : " + pw +" " + pw2);
		PrintWriter out = response.getWriter();
		if(!pw.equals(pw2)) {
			out.print("��й�ȣ�� �ٽ� �Է��� �ּ���.");
		}
	}

}
