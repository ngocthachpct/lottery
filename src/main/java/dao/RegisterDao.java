package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.DBContext;
import model.User;

public class RegisterDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public Boolean checkUserName(String usr) {
		try {
			String query = "SELECT D.TENTK FROM (SELECT * FROM QUANLY UNION SELECT * FROM NGUOIDUNG) AS D WHERE D.TENTK= ?";
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, usr);
			rs = ps.executeQuery(); 
			while (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		return false;
	}
	
	public Boolean checkUserMail(String mail) {
		try {
			String query = "SELECT D.TENTK FROM (SELECT * FROM QUANLY UNION SELECT * FROM NGUOIDUNG) AS D WHERE D.EMAIL= ?";
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, mail);
			rs = ps.executeQuery(); 
			while (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		return false;
	}
	

	public int addAccount(User account) {
		String query="";
		int check = 0;
		if (account.getGroupId().equalsIgnoreCase("ND")) {
			query = "INSERT INTO NGUOIDUNG(MANHOM, TENNHOM, HOTEN, TENTK, MK, DIACHI, EMAIL, DT) VALUES (?,?,?,?,?,?,?,?)";
		} else {
			query = "INSERT INTO QUANLY(MANHOM, TENNHOM, HOTEN, TENTK, MK, DIACHI, EMAIL, DT) VALUES (?,?,?,?,?,?,?,?)";
		}
		
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, account.getGroupId());
			ps.setString(2, account.getGroupName());
			ps.setString(3, account.getName());
			ps.setString(4, account.getUsr());
			ps.setString(5, account.getPwd());
			ps.setString(6, account.getAddress());
			ps.setString(7, account.getMail());
			ps.setString(8, account.getPhone());
			
			check = ps.executeUpdate();
		} catch (Exception e) {
			check=-1;
		}
		return check;
	}
	
	public static void main(String[] args) {
		RegisterDao dao = new RegisterDao();
		boolean x = dao.checkUserName("hovanL");
		System.out.println(x);
		
		dao.addAccount(new User("nk", "NGUOIDUNGKHACh", "HỒ VĂN P", "123", "HOVANP", "HCM", "HOVANP@GMAIL.COM", "0123456789"));
	}

}
