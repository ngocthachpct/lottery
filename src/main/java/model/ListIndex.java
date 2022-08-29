package model;

import java.sql.Date;
import java.util.List;

public class ListIndex {
	private Date openDay;
	private String province;
	private List<String> specialPrize;
	private List<String> firstPrize;
	private List<String> secondPrize;
	private List<String> thirdPrize;
	private List<String> fourthPrize;
	private List<String> fifthPrize;
	private List<String> sixthPrize;
	private List<String> seventhPrize;
	public ListIndex() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ListIndex(Date openDay, String province, List<String> specialPrize, List<String> firstPrize, List<String> secondPrize,
			List<String> thirdPrize, List<String> fourthPrize, List<String> fifthPrize, List<String> sixthPrize,
			List<String> seventhPrize) {
		super();
		this.openDay = openDay;
		this.province = province;
		this.specialPrize = specialPrize;
		this.firstPrize = firstPrize;
		this.secondPrize = secondPrize;
		this.thirdPrize = thirdPrize;
		this.fourthPrize = fourthPrize;
		this.fifthPrize = fifthPrize;
		this.sixthPrize = sixthPrize;
		this.seventhPrize = seventhPrize;
	}
	
	public ListIndex(List<String> specialPrize, List<String> firstPrize, List<String> secondPrize,
			List<String> thirdPrize, List<String> fourthPrize, List<String> fifthPrize, List<String> sixthPrize,
			List<String> seventhPrize) {
		super();
		this.specialPrize = specialPrize;
		this.firstPrize = firstPrize;
		this.secondPrize = secondPrize;
		this.thirdPrize = thirdPrize;
		this.fourthPrize = fourthPrize;
		this.fifthPrize = fifthPrize;
		this.sixthPrize = sixthPrize;
		this.seventhPrize = seventhPrize;
	}
	public Date getOpenDay() {
		return openDay;
	}
	public void setOpenDay(Date openDay) {
		this.openDay = openDay;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public List<String> getSpecialPrize() {
		return specialPrize;
	}
	public void setSpecialPrize(List<String> specialPrize) {
		this.specialPrize = specialPrize;
	}
	public List<String> getFirstPrize() {
		return firstPrize;
	}
	public void setFirstPrize(List<String> firstPrize) {
		this.firstPrize = firstPrize;
	}
	public List<String> getSecondPrize() {
		return secondPrize;
	}
	public void setSecondPrize(List<String> secondPrize) {
		this.secondPrize = secondPrize;
	}
	public List<String> getThirdPrize() {
		return thirdPrize;
	}
	public void setThirdPrize(List<String> thirdPrize) {
		this.thirdPrize = thirdPrize;
	}
	public List<String> getFourthPrize() {
		return fourthPrize;
	}
	public void setFourthPrize(List<String> fourthPrize) {
		this.fourthPrize = fourthPrize;
	}
	public List<String> getFifthPrize() {
		return fifthPrize;
	}
	public void setFifthPrize(List<String> fifthPrize) {
		this.fifthPrize = fifthPrize;
	}
	public List<String> getSixthPrize() {
		return sixthPrize;
	}
	public void setSixthPrize(List<String> sixthPrize) {
		this.sixthPrize = sixthPrize;
	}
	public List<String> getSeventhPrize() {
		return seventhPrize;
	}
	public void setSeventhPrize(List<String> seventhPrize) {
		this.seventhPrize = seventhPrize;
	}
	@Override
	public String toString() {
		return "ListIndex [openDay=" + openDay + ", province=" + province + ", specialPrize=" + specialPrize
				+ ", firstPrize=" + firstPrize + ", secondPrize=" + secondPrize + ", thirdPrize=" + thirdPrize
				+ ", fourthPrize=" + fourthPrize + ", fifthPrize=" + fifthPrize + ", sixthPrize=" + sixthPrize
				+ ", seventhPrize=" + seventhPrize + "]";
	}
	
	public void printIem(List<String> list) {
		for(String x : list) {
			System.out.print(x);
		}
	}
}
