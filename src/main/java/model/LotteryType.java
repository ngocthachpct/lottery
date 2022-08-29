package model;

import java.sql.Date;

public class LotteryType {
	private int  id;
	private String  typeName;
	private String  province;
	private float  price;
	private int	numberDigits;	
	private int	totalSpins;
	private Date	dateStart;
	private Date	dateEnd;
	public LotteryType() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public LotteryType(int id, String typeName, String province, float price, int numberDigits, int totalSpins,
			Date dateStart, Date dateEnd) {
		super();
		this.id = id;
		this.typeName = typeName;
		this.province = province;
		this.price = price;
		this.numberDigits = numberDigits;
		this.totalSpins = totalSpins;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
	}
	
	public LotteryType(String typeName, String province, float price, int numberDigits, int totalSpins,
			Date dateStart, Date dateEnd) {
		super();
		this.typeName = typeName;
		this.province = province;
		this.price = price;
		this.numberDigits = numberDigits;
		this.totalSpins = totalSpins;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getNumberDigits() {
		return numberDigits;
	}
	public void setNumberDigits(int numberDigits) {
		this.numberDigits = numberDigits;
	}
	public int getTotalSpins() {
		return totalSpins;
	}
	public void setTotalSpins(int totalSpins) {
		this.totalSpins = totalSpins;
	}
	public Date getDateStart() {
		return dateStart;
	}
	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}
	public Date getDateEnd() {
		return dateEnd;
	}
	public void setDateEnd(Date dateEnd) {
		this.dateEnd = dateEnd;
	}
	@Override
	public String toString() {
		return "LotteryType [id=" + id + ", typeName=" + typeName + ", province=" + province + ", price=" + price
				+ ", numberDigits=" + numberDigits + ", totalSpins=" + totalSpins + ", dateStart=" + dateStart
				+ ", dateEnd=" + dateEnd + "]";
	}
	
	
}
