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
		if (rs != null)
			rs.close();
		if (pst != null)
			pst.close();
		if (con != null)
			con.close();
	}

	public ArrayList<AttributeDTO> selectAnalysisAttribute() throws Exception {
		/* Analysis ���̺��� ��Ŭ���� �Ÿ���꿡 �ʿ��� �Ӽ����� �������� �޼ҵ� */

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
		/* Analysis ���̺��� ��Ŭ���� �Ÿ��м� ���� �������� ������ ��ȣ�ϴ� ������(type)�� �������� �޼ҵ� */

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

	public ArrayList<PostDTO> selectPostAll() throws Exception {
		/* Community.jsp���� �ۼ��� post�� ��� ������ ArrayList���·� ��ȯ�ϴ� �޼ҵ� */

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
		/* Post ���̺� ������ �ۼ��� ���並 �־��ִ� �޼ҵ� */

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
		/* PostContent.jsp���� �ش� �Խñ��� �����ַ��� �� ���� �������� �޼ҵ� */

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
		/* soolInfo.jsp���� �ۼ��� review�� ��� ������ ArrayList���·� ��ȯ�ϴ� �޼ҵ� */

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
		/* Post ���̺� ������ �ۼ��� ����� �־��ִ� �޼ҵ� */

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
		/* Drink���̺� �����ؼ� �ش� ������ �� �������� ������ arraylist�� ���� */
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
		/* ���� �г����� �������� �޼ҵ� */
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