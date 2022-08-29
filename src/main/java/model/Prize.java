package model;

import java.sql.Date;

public class Prize {
	private int	prizeId;
	private String	prizeName;
	private String	typeName;
	private float	price;
	private float	prizeValue;
	private int	numberDigits;
	private int	totalSpins;
	private Date	createDate;
	
	public Prize() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	public Prize(int prizeId, String prizeName, String typeName, float price, float prizeValue, int numberDigits,
			int totalSpins, Date createDate) {
		super();
		this.prizeId = prizeId;
		this.prizeName = prizeName;
		this.typeName = typeName;
		this.price = price;
		this.prizeValue = prizeValue;
		this.numberDigits = numberDigits;
		this.totalSpins = totalSpins;
		this.createDate = createDate;
	}



	public Prize(String prizeName, String typeName, float price, Date createDate, float prizeValue,
			int numberDigits, int totalSpins) {
		super();
		this.prizeName = prizeName;
		this.typeName = typeName;
		this.price = price;
		this.createDate = createDate;
		this.prizeValue = prizeValue;
		this.numberDigits = numberDigits;
		this.totalSpins = totalSpins;
	}

	public int getPrizeId() {
		return prizeId;
	}

	public void setPrizeId(int prizeId) {
		this.prizeId = prizeId;
	}

	public String getPrizeName() {
		return prizeName;
	}

	public void setPrizeName(String prizeName) {
		this.prizeName = prizeName;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public float getPrizeValue() {
		return prizeValue;
	}

	public void setPrizeValue(float prizeValue) {
		this.prizeValue = prizeValue;
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

	@Override
	public String toString() {
		return "Prize [prizeId=" + prizeId + ", prizeName=" + prizeName + ", typeName=" + typeName + ", price=" + price
				+ ", prizeValue=" + prizeValue + ", numberDigits=" + numberDigits + ", totalSpins=" + totalSpins
				+ ", createDate=" + createDate + "]";
	}

}
