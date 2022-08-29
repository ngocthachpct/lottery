package model;

import java.sql.Time;
import java.sql.Date;

public class PrizeOpening {
	private int	poId;
	private Date	date;
	private Time time;
	private String	typeName;
	private String  province;
	private float	price;
	private Date	dateStart;
	public PrizeOpening() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PrizeOpening(int poId, Date date, Time time, String typeName, String province, float price,
			Date dateStart) {
		super();
		this.poId = poId;
		this.date = date;
		this.time = time;
		this.typeName = typeName;
		this.province = province;
		this.price = price;
		this.dateStart = dateStart;
	}
	
	public PrizeOpening(Date date, Time time, String typeName, String province, float price, Date dateStart) {
		super();
		this.date = date;
		this.time = time;
		this.typeName = typeName;
		this.province = province;
		this.price = price;
		this.dateStart = dateStart;
	}
	public int getPoId() {
		return poId;
	}
	public void setPoId(int poId) {
		this.poId = poId;
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
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public Date getDateStart() {
		return dateStart;
	}
	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}
	@Override
	public String toString() {
		return "PrizeOpening [poId=" + poId + ", date=" + date + ", time=" + time + ", typeName=" + typeName
				+ ", province=" + province + ", price=" + price + ", dateStart=" + dateStart + "]";
	}
	
}
