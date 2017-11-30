package com.DAO;

public class AttributeDTO {
	private double alcohol;
	private double flavor;
	private double taste;
	private double feel;
	private double atm;
	private String type;
	
	public AttributeDTO(double alcohol, double flavor, double taste, double feel, double atm) {
		this.alcohol = alcohol;
		this.flavor = flavor;
		this.taste = taste;
		this.feel = feel;
		this.atm = atm;
		this.type = null;
	}

	public double getAlcohol() {
		return alcohol;
	}

	public void setAlcohol(int alcohol) {
		this.alcohol = alcohol;
	}

	public double getFlavor() {
		return flavor;
	}

	public void setFlavor(int flavor) {
		this.flavor = flavor;
	}

	public double getTaste() {
		return taste;
	}

	public void setTaste(int taste) {
		this.taste = taste;
	}

	public double getFeel() {
		return feel;
	}

	public void setFeel(int feel) {
		this.feel = feel;
	}

	public double getAtm() {
		return atm;
	}

	public void setAtm(int atm) {
		this.atm = atm;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
}
