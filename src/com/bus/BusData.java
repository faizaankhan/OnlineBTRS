package com.bus;

public class BusData {

	private String time;
	private String bid;
	private int no_seats;
	private String source;
	private String dest;
	private String type;
	private float fare;
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public int getNo_seats() {
		return no_seats;
	}
	public void setNo_seats(int no_seats) {
		this.no_seats = no_seats;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDest() {
		return dest;
	}
	public void setDest(String dest) {
		this.dest = dest;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public float getFare() {
		return fare;
	}
	public void setFare(float fare) {
		this.fare = fare;
	}

}
