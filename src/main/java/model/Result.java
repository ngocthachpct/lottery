package model;

import java.sql.Date;

public class Result {
	private int id;
	private int	turn;
	private String	typeName;
	private String	prizeName;
	private String	province;
	private String	result;
	private Date	openDate;
	private int poId;
	private int prizeId;
	
	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Result(int id, int turn, String prizeName, String province, String result, Date openDate, String typeName ) {
		super();
		this.id = id;
		this.turn = turn;
		this.prizeName = prizeName;
		this.province = province;
		this.result = result;
		this.openDate = openDate;
		this.typeName = typeName;
	}
	
	public Result(int id, int prizeId, String prizeName, String typeName, int turn, int poId, String result, Date openDate) {
		super();
		this.id = id;
		this.turn = turn;
		this.result = result;
		this.openDate = openDate;
		this.poId = poId;
		this.prizeId = prizeId;
		this.typeName = typeName;
		this.prizeName = prizeName;
	}
	

	public Result(int turn, String typeName, String prizeName, String province, String result, Date openDate, int poId,
			int prizeId) {
		super();
		this.turn = turn;
		this.typeName = typeName;
		this.prizeName = prizeName;
		this.province = province;
		this.result = result;
		this.openDate = openDate;
		this.poId = poId;
		this.prizeId = prizeId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTurn() {
		return turn;
	}

	public void setTurn(int turn) {
		this.turn = turn;
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

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Date getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}
	

	public int getPoId() {
		return poId;
	}

	public void setPoId(int poId) {
		this.poId = poId;
	}

	public int getPrizeId() {
		return prizeId;
	}

	public void setPrizeId(int prizeId) {
		this.prizeId = prizeId;
	}

	@Override
	public String toString() {
		return "Result [id=" + id + ", turn=" + turn + ", typeName=" + typeName + ", prizeName=" + prizeName
				+ ", province=" + province + ", result=" + result + ", openDate=" + openDate + ", poId=" + poId
				+ ", prizeId=" + prizeId + "]";
	}

	
}
