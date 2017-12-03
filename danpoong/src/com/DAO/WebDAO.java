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
		if (rs != null)
			rs.close();
		if (pst != null)
			pst.close();
		if (con != null)
			con.close();
	}

	public ArrayList<AttributeDTO> selectAnalysisAttribute() throws Exception {
		/* Analysis 테이블에서 유클리드 거리계산에 필요한 속성들을 가져오는 메소드 */

		getConnection();

		pst = con.prepareStatement("select * from analysis");
		rs = pst.executeQuery();

		ArrayList<AttributeDTO> list = new ArrayList<AttributeDTO>();

		while (rs.next()) {
			list.add(new AttributeDTO(
					rs.getInt(1), 
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

		while (rs.next()) {
			type_list.add(rs.getString(1));
		}

		close();

		return type_list;
	}

	public int insertType(String result_type1, String result_type2, String id) throws Exception {
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

	public ArrayList<PostDTO> selectPostAll() throws Exception {
		/* Community.jsp에서 작성된 post를 모두 가져와 ArrayList형태로 반환하는 메소드 */

		getConnection();
		pst = con.prepareStatement("select * from post order by num desc");
		rs = pst.executeQuery();

		ArrayList<PostDTO> list = new ArrayList<PostDTO>();
		while (rs.next()) {
			list.add(new PostDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getInt(7)));
		}
		close();

		return list;

	}

	public int insertPost(PostDTO post) throws Exception {
		/* Post 테이블에 유저가 작성한 리뷰를 넣어주는 메소드 */

		getConnection();

		pst = con.prepareStatement("insert into post values(post_num.nextval,?,?,to_char(sysdate, 'YYYY-MM-DD'),?,?,?)");
		pst.setString(1, post.getTitle());
		pst.setString(2, post.getPost_author());
		pst.setString(3, post.getPost_content());
		pst.setString(4, post.getFile());
		pst.setInt(5, 0);

		cnt = pst.executeUpdate();

		close();

		return cnt;
	}

	public PostDTO selectPostOne(int num) throws Exception {
		/* PostContent.jsp에서 해당 게시글을 보여주려할 때 값을 가져오는 메소드 */

		getConnection();

		pst = con.prepareStatement("select * from post where num = ?");
		pst.setInt(1, num);
		rs = pst.executeQuery();

		PostDTO post = null;

		while (rs.next()) {
			post = new PostDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getInt(7));
		}

		close();

		return post;
	}

	public ArrayList<ReviewDTO> selectReviewAll(String drink_id) throws Exception {
		/* soolInfo.jsp에서 작성된 review를 모두 가져와 ArrayList형태로 반환하는 메소드 */

		getConnection();

		pst = con.prepareStatement("select * from review where drink_id like ?||'%' order by num desc");
		pst.setString(1, drink_id);
		rs = pst.executeQuery();

		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();

		while (rs.next()) {
			list.add(new ReviewDTO(rs.getInt(1), rs.getString(2), rs.getDouble(3),rs.getDouble(4), rs.getString(5), rs.getString(6)));
		}

		close();

		return list;
	}

	public int insertReview(ReviewDTO review) throws Exception {
		/* Post 테이블에 유저가 작성한 댓글을 넣어주는 메소드 */

		getConnection();

		pst = con.prepareStatement("insert into review values(review_num.nextval,?,?,?,?)");
		pst.setString(1, review.getDrink_id());
		pst.setDouble(2, review.getScore());
		pst.setString(3, review.getAuthor());
		pst.setString(4, review.getReview_content());

		cnt = pst.executeUpdate();

		close();

		return cnt;
	}
	
	public ArrayList<DrinkInfoDTO> selectDrinkInfo(String drink_id) throws Exception {
		/* Drink테이블에 접근해서 해당 종류의 술 정보들을 가져와 arraylist에 저장 */
		getConnection();

		pst = con.prepareStatement("select * from drink where drink_id like ?||'%'");
		pst.setString(1, drink_id);
		rs = pst.executeQuery();

		ArrayList<DrinkInfoDTO> list = new ArrayList<DrinkInfoDTO>();

		while (rs.next()) {
			list.add(new DrinkInfoDTO(rs.getString(1), 
					rs.getString(2), rs.getDouble(3), 
					rs.getString(4), rs.getString(5), 
					rs.getInt(6), rs.getString(7), rs.getString(8)));
		}

		close();

		return list;
	}
	
	public String selectNick(String id) throws Exception {
		/* 유저 닉네임을 가져오는 메소드 */
		getConnection();

		pst = con.prepareStatement("select nickname from member where member_id = ?");
		pst.setString(1, id);
		rs = pst.executeQuery();

		String result = null;
		
		while (rs.next()) {
			result=rs.getString(1);
		}

		close();
		
		return result;
	}

}