package com.DAO;

public class DrinkInfoDTO {
	private String drink_id;
	private String drink_name;
	private double alcohol;
	private String year;
	private String area;
	private int price;
	private String info;
	private String content;
	
	public DrinkInfoDTO(String drink_id, String drink_name, double alcohol, String year, String area, int price,
			String info, String content) {
		/* Drink 테이블의 정보를 가져올 때 정보를 담아둘 객체 생성자 */
		this.drink_id = drink_id;
		this.drink_name = drink_name;
		this.alcohol = alcohol;
		this.year = year;
		this.area = area;
		this.price = price;
		this.info = info;
		this.content = content;
	}

	public String getDrink_id() {
		return drink_id;
	}

	public void setDrink_id(String drink_id) {
		this.drink_id = drink_id;
	}

	public String getDrink_name() {
		return drink_name;
	}

	public void setDrink_name(String drink_name) {
		this.drink_name = drink_name;
	}

	public double getAlcohol() {
		return alcohol;
	}

	public void setAlcohol(double alcohol) {
		this.alcohol = alcohol;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
