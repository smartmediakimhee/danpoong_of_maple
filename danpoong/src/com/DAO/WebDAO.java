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
		// WebDAO 인스턴스
		return instance;
	}
	
	public void getConnection() throws Exception { 
		// DB연결 (db.properties에서 dbid, dbpw 지정해줘야 함)
		
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
		// DB작업 끝나고 연결 끊을 때 필요한 코드 모아둔 메소드
		if(rs != null) rs.close();
		if(pst != null) pst.close();
		if(con != null) con.close();
	}
	
	public ArrayList<AttributeDTO> selectAnalysisAttribute() throws Exception {
		/* Analysis 테이블에서 유클리드 거리계산에 필요한 속성들을 가져오는 메소드 */

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
		/* Analysis 테이블에서 유클리드 거리분석 이후 유저에게 적용할 선호하는 술종류(type)를 가져오는 메소드 */
		
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
		/* Member 테이블에 type속성에 유저의 선호하는 술 분석 결과를 넣어주는 메소드 */
		
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