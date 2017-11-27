package com.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * �̼��������� �ƴ��� �Ǵ��ϴ� ����
 */
@WebServlet("/ex01Service")
public class ex01Service extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int year = Integer.parseInt(request.getParameter("year"));
		
		PrintWriter out = response.getWriter();
		
		if(year<1998){
			System.out.println(year);
			out.print("success");
		} else {
			out.print("fail");
		}
	}

}
