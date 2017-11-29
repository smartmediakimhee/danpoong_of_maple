package com.DAO;

public class AttributeDTO {
	private int alcohol;
	private int flavor;
	private int taste;
	private int feel;
	private int atm;
	private String type;
	
	public AttributeDTO(int alcohol, int flavor, int taste, int feel, int atm) {
		this.alcohol = alcohol;
		this.flavor = flavor;
		this.taste = taste;
		this.feel = feel;
		this.atm = atm;
		this.type = null;
	}

	public int getAlcohol() {
		return alcohol;
	}

	public void setAlcohol(int alcohol) {
		this.alcohol = alcohol;
	}

	public int getFlavor() {
		return flavor;
	}

	public void setFlavor(int flavor) {
		this.flavor = flavor;
	}

	public int getTaste() {
		return taste;
	}

	public void setTaste(int taste) {
		this.taste = taste;
	}

	public int getFeel() {
		return feel;
	}

	public void setFeel(int feel) {
		this.feel = feel;
	}

	public int getAtm() {
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
