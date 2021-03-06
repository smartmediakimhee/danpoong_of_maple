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
		// WebDAO 인스턴스
		return instance;
	}
	
	public void getConnection() throws Exception {
		
		InputStream in = (this.getClass().getResourceAsStream("../../../../db.properties"));
		//현재 작업하고 있는 자바파일의 클래스파일을 기준으로 db.properties을 읽어 오겠다.
		Properties p =new Properties();
		p.load(in);
		
		Class.forName(p.getProperty("dbclass"));
		
		String url = p.getProperty("dburl");
		String dbid = p.getProperty("dbid");
		String dbpw = p.getProperty("dbpw");

		conn = DriverManager.getConnection(url, dbid, dbpw);
	}
	
	public void close() throws Exception { 
		// DB작업 끝나고 연결 끊을 때 필요한 코드 모아둔 메소드
		if(rs != null) rs.close();
		if(pst != null) pst.close();
		if(conn != null) conn.close();
	}

	//로그인 메서드
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
		
		close();
		return cnt;
	}

	public int Update(String pw, String nick, int age, String location, String id) throws Exception {
		getConnection();
		
		String sql = "update member set member_pw=?, nickname=?, age=?, address=? where member_id=?";
		pst=conn.prepareStatement(sql);
		
		pst.setString(1, pw);
		pst.setString(2, nick);
		pst.setInt(3, age);
		pst.setString(4, location);
		pst.setString(5, id);
		
		int cnt = pst.executeUpdate();
		close();
		return cnt;
	}

}
