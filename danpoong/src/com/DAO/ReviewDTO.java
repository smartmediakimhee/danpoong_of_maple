package com.DAO;

public class ReviewDTO {
	
	private int num;
	private String drink_id;
	private double score;
	private String author;
	private String review_content;
	
	public ReviewDTO(int num, String drink_id, double score, String author, String review_content) {
		/* soolInfo.jsp���� ����� �ҷ��� �� ������ �� ���� �� �ִ� ��ü ������ */
		this.num = num;
		this.drink_id = drink_id;
		this.score = score;
		this.author = author;
		this.review_content = review_content;
	}

	public ReviewDTO(double score, String review_content) {
		/* soolInfo.jsp���� ������ ����� ������ �� �ʿ��� ������ ���� ��ü ������ */
		this.score = score;
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
	
}
