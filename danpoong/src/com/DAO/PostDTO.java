package com.DAO;

public class PostDTO {
	/* post ���̺� �����ؼ� �����͸� ������ �� ��Ƶ� ��ü */
	private int num;
	private String title;
	private String post_author;
	private String time_check;
	private String post_content;
	private String file;
	private int likey;
	
	public PostDTO(int num, String title, String post_author, String time_check, String post_content, String file,
			int likey) {
		// community �������� ��� ������ �� ���� �� �ִ� ������
		this.num = num;
		this.title = title;
		this.post_author = post_author;
		this.time_check = time_check;
		this.post_content = post_content;
		this.file = file;
		this.likey = likey;
	}

	public PostDTO(String title, String post_author, String post_content, String file) {
		// PostWrite ���������� DB�� ������ ���� ���� ��ü ������
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
