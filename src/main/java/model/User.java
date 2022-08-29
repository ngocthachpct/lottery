package model;

public class User {
	private String groupId;
	private String groupName;
	private String name;
	private String usr;
	private String pwd;
	private int id;
	private String address;
	private String mail;
	private String phone;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String groupId, String groupName, String name,  int id, String usr, String pwd, String address,
			String mail, String phone) {
		super();
		this.groupId = groupId;
		this.groupName = groupName;
		this.name = name;
		this.usr = usr;
		this.pwd = pwd;
		this.id = id;
		this.address = address;
		this.mail = mail;
		this.phone = phone;
	}
	

	public User(String groupId, String groupName, String name, String usr, String pwd, int id, String address,
			String mail, String phone) {
		super();
		this.groupId = groupId;
		this.groupName = groupName;
		this.name = name;
		this.usr = usr;
		this.pwd = pwd;
		this.id = id;
		this.address = address;
		this.mail = mail;
		this.phone = phone;
	}

	public User(String groupId, String groupName, String name, String usr, String pwd, String address, String mail,
			String phone) {
		super();
		this.groupId = groupId;
		this.groupName = groupName;
		this.name = name;
		this.usr = usr;
		this.pwd = pwd;
		this.address = address;
		this.mail = mail;
		this.phone = phone;
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
	public String getUsr() {
		return usr;
	}
	public void setUsr(String usr) {
		this.usr = usr;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "User [groupId=" + groupId + ", groupName=" + groupName + ", name=" + name + ", usr=" + usr + ", pwd="
				+ pwd + ", id=" + id + ", address=" + address + ", mail=" + mail + ", phone=" + phone + "]";
	}
	
}
