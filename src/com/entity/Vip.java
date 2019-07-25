package com.entity;

public class Vip {
	private int id;
	private String username;
	private int points;
	private int level;
	private String enddate;
	private Double consumed;
	private int kehuid;
	private double discount;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}

	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public Double getConsumed() {
		return consumed;
	}
	public void setConsumed(Double consumed) {
		this.consumed = consumed;
	}
	public int getKehuid() {
		return kehuid;
	}
	public void setKehuid(int kehuid) {
		this.kehuid = kehuid;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	
	
}
