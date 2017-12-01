package com.DAO;

public class PostDTO {
	/* post 테이블에 접근해서 데이터를 가져올 때 담아둘 객체 */
	private int num;
	private String title;
	private String post_author;
	private String time_check;
	private String post_content;
	private String file;
	private int likey;
	
	public PostDTO(int num, String title, String post_author, String time_check, String post_content, String file,
			int likey) {
		// community 페이지에 띄울 정보를 다 담을 수 있는 생성자
		this.num = num;
		this.title = title;
		this.post_author = post_author;
		this.time_check = time_check;
		this.post_content = post_content;
		this.file = file;
		this.likey = likey;
	}

	public PostDTO(String title, String post_author, String post_content, String file) {
		// PostWrite 페이지에서 DB로 저장할 값을 담을 객체 생성자
		this.title = title;
		this.post_author = post_author;
		this.post_content = post_content;
		this.file = file;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPost_author() {
		return post_author;
	}

	public void setPost_author(String post_author) {
		this.post_author = post_author;
	}

	public String getTime_check() {
		return time_check;
	}

	public void setTime_check(String time_check) {
		this.time_check = time_check;
	}

	public String getPost_content() {
		return post_content;
	}

	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public int getLikey() {
		return likey;
	}

	public void setLikey(int likey) {
		this.likey = likey;
	}
	
}
