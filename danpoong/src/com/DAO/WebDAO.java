package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

public class WebDAO {
	
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet rs = null;
	private int cnt = 0;
	private static WebDAO instance = new WebDAO();
	
	public static WebDAO getInstance() {
		// WebDAO �ν��Ͻ�
		return instance;
	}
	
	public void getConnection() throws Exception { 
		// DB���� (db.properties���� dbid, dbpw ��������� ��)
		
		InputStream in = (this.getClass().getResourceAsStream("../../../../db.properties"));
		
		Properties p = new Properties();
		p.load(in);
		
		String url = p.getProperty("dburl");
		String dbid = p.getProperty("dbid");
		String dbpw = p.getProperty("dbpw");
		Class.forName(p.getProperty("dbclass"));
		con = DriverManager.getConnection(url, dbid, dbpw);
		
	}
	
	public void close() throws Exception { 
		// DB�۾� ������ ���� ���� �� �ʿ��� �ڵ� ��Ƶ� �޼ҵ�
		if(rs != null) rs.close();
		if(pst != null) pst.close();
		if(con != null) con.close();
	}
	
	public ArrayList<AttributeDTO> selectAnalysisAttribute() throws Exception {
		/* Analysis ���̺��� ��Ŭ���� �Ÿ���꿡 �ʿ��� �Ӽ����� �������� �޼ҵ� */

		getConnection();
		
		pst = con.prepareStatement("select * from analysis");
		rs = pst.executeQuery();
		
		ArrayList<AttributeDTO> list = new ArrayList<AttributeDTO>();
		
		while(rs.next()) {
			list.add(new AttributeDTO(rs.getInt(1), 
					rs.getInt(2), 
					rs.getInt(3), 
					rs.getInt(4), 
					rs.getInt(5)));
		}
		
		close();
		
		return list;
	}
	
	public ArrayList<String> selectAnalysisType() throws Exception {
		/* Analysis ���̺��� ��Ŭ���� �Ÿ��м� ���� �������� ������ ��ȣ�ϴ� ������(type)�� �������� �޼ҵ� */
		
		getConnection();
		
		pst = con.prepareStatement("select type from analysis");
		rs = pst.executeQuery();
		
		ArrayList<String> type_list = new ArrayList<String>();
		
		while(rs.next()) {
			type_list.add(rs.getString(1));
		}
		
		close();
		
		return type_list;
	}
	
	public int insertType(String result_type1,String result_type2, String id) throws Exception{
		/* Member ���̺� type�Ӽ��� ������ ��ȣ�ϴ� �� �м� ����� �־��ִ� �޼ҵ� */
		
		getConnection();
		
		pst = con.prepareStatement("update member set type1 = ?, type2 = ? where member_id = ?");
		pst.setString(1, result_type1);
		pst.setString(2, result_type2);
		pst.setString(3, id);
		
		cnt = pst.executeUpdate();
		
		close();
		
		return cnt;
	}
	
}