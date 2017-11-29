package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.AttributeDTO;
import com.DAO.Uclidian;
import com.DAO.WebDAO;

@WebServlet("/UserTypeService")
public class UserTypeService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* Form.jsp에서 넘어온 유저의 설문 결과값 */
		int alcohol = Integer.parseInt(request.getParameter("alcohol"));
		int flavor = Integer.parseInt(request.getParameter("flavor"));
		int taste = Integer.parseInt(request.getParameter("taste"));
		int feel = Integer.parseInt(request.getParameter("feel"));
		int atm = Integer.parseInt(request.getParameter("atm"));
		
		/* session에서 id값 가져와야 함 */
		String id = "smart";
		
		WebDAO dao = WebDAO.getInstance();
		
		Uclidian ucl = new Uclidian();
		AttributeDTO attr = new AttributeDTO(alcohol, flavor, taste, feel, atm);
		
		try {
			ArrayList<AttributeDTO> db_attr_list = dao.selectAnalysisAttribute();
			ArrayList<String> db_type_list = dao.selectAnalysisType();
			
			String result_type = ucl.calDis(attr, db_attr_list, db_type_list);
			
			int cnt = dao.insertType(result_type, id);
			
			if(cnt>0) {
				/* Member 테이블에서 type속성이 정확하게 들어간 후 이동할 페이지 */
				response.sendRedirect("success.jsp");
			} else {
				/* 실패한다면 돌아가거나 이동할 페이지 */
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
