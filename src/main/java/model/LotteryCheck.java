package model;

import java.sql.Date;

public class LotteryCheck {
	private String province;
	private String number;
	private Date date;
	public LotteryCheck() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LotteryCheck(String province, String number, Date date) {
		super();
		this.province = province;
		this.number = number;
		this.date = date;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "LotteryCheck [province=" + province + ", number=" + number + ", date=" + date + "]";
	}
	
}
