package model;

import java.sql.Date;
import java.sql.Time;

public class HistoryCheck {
	private String groupId;
	private String groupName;
	private String name;
	private int id;
	private Date date;
	private Time time;
	private String number;
	private String result;
	private float prizeValue;
	
	public HistoryCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HistoryCheck(String groupId, String groupName, String name, int id, Date date, Time time, String number,
			String result, float prizeValue) {
		super();
		this.groupId = groupId;
		this.groupName = groupName;
		this.name = name;
		this.id = id;
		this.date = date;
		this.time = time;
		this.number = number;
		this.result = result;
		this.prizeValue = prizeValue;
	}
	
	public HistoryCheck(Date date, Time time, String number, String result, float prizeValue) {
		super();
		this.date = date;
		this.time = time;
		this.number = number;
		this.result = result;
		this.prizeValue = prizeValue;
	}
	
	

	public HistoryCheck(String groupId, String groupName, String name, int id, Date date, Time time) {
		super();
		this.groupId = groupId;
		this.groupName = groupName;
		this.name = name;
		this.id = id;
		this.date = date;
		this.time = time;
	}

	public String getGroupId() {
		return groupId;
	}

	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public float getPrizeValue() {
		return prizeValue;
	}

	public void setPrizeValue(float prizeValue) {
		this.prizeValue = prizeValue;
	}

	@Override
	public String toString() {
		return "HistoryCheck [groupId=" + groupId + ", groupName=" + groupName + ", name=" + name + ", id=" + id
				+ ", date=" + date + ", time=" + time + ", number=" + number + ", result=" + result + ", prizeValue="
				+ prizeValue + "]";
	}
	
	
}
