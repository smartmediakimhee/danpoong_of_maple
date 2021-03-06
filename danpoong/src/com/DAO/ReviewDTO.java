package com.DAO;

public class ReviewDTO {
	
	private int num;
	private String drink_id;
	private double score;
	private double score_analysis;
	private String author;
	private String review_content;
	
	public ReviewDTO(int num, String drink_id, double score1, double score2, String author, String review_content) {
		/* soolInfo.jsp에서 댓글을 불러올 때 정보를 다 담을 수 있는 객체 생성자 */
		this.num = num;
		this.drink_id = drink_id;
		this.score = score1;
		this.score_analysis = score2;
		this.author = author;
		this.review_content = review_content;
	}

	public ReviewDTO(String drink_id, double score, String author, String review_content) {
		/* 유저가 작성한 댓글을 저장할 때 담아둘 객체 생성자 */
		this.drink_id = drink_id;
		this.score = score;
		this.author = author;
		this.review_content = review_content;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getDrink_id() {
		return drink_id;
	}

	public void setDrink_id(String drink_id) {
		this.drink_id = drink_id;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public double getScore_analysis() {
		return score_analysis;
	}

	public void setScore_analysis(double score_analysis) {
		this.score_analysis = score_analysis;
	}
	
}
