package com.DoDAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import com.DAO.WebDAO;

public class DoDAO {
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	private static DoDAO instance = new DoDAO();
	
	public static DoDAO getInstance() {
		// WebDAO �ν��Ͻ�
		return instance;
	}
	
	public void getConnection() throws Exception {
		
		InputStream in = (this.getClass().getResourceAsStream("../../../../db.properties"));
		//���� �۾��ϰ� �ִ� �ڹ������� Ŭ���������� �������� db.properties�� �о� ���ڴ�.
		Properties p =new Properties();
		p.load(in);
		
		Class.forName(p.getProperty("dbclass"));
		
		String url = p.getProperty("dburl");
		String dbid = p.getProperty("dbid");
		String dbpw = p.getProperty("dbpw");

		conn = DriverManager.getConnection(url, dbid, dbpw);
	}
	
	public void close() throws Exception { 
		// DB�۾� ������ ���� ���� �� �ʿ��� �ڵ� ��Ƶ� �޼ҵ�
		if(rs != null) rs.close();
		if(pst != null) pst.close();
		if(conn != null) conn.close();
	}

	//�α��� �޼���
	public int Login(String id, String pw) throws Exception {
		getConnection();
		
		String sql = "select * from member where member_id=?";
		
		pst = conn.prepareStatement(sql);
		pst.setString(1, id);
		
		rs = pst.executeQuery();
		int result = 0;
		if(rs.next())
		{
			String getPw = rs.getString(2);
			if(pw.equals(getPw)) {
				result = 1;
			}
		} else {
			result = 2;
		}
		
		close();
		return result;
	}

	public int Join(String id, String pw, String nick, int age, String location) throws Exception {
		
		getConnection();
		
		String sql = "insert into member(member_id, member_pw, nickname, age, address) values(?,?,?,?,?)";
		pst = conn.prepareStatement(sql);
		
		pst.setString(1,  id);
		pst.setString(2,  pw);
		pst.setString(3,  nick);
		pst.setInt(4,  age);
		pst.setString(5,  location);
		
		int cnt = pst.executeUpdate();
		
		return cnt;
	}

}
