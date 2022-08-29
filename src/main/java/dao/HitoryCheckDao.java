package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.HistoryCheck;
import model.User;

public class HitoryCheckDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public int addHistoryChecks(HistoryCheck history){
		String query = "INSERT INTO LICHSUDO(MANHOM, TENNHOM, HOTEN, ID, NGAYDO, GIODO, SODO, KETQUA, TIENTHUONG)\r\n"
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, history.getGroupId());
			ps.setString(2, history.getGroupName());
			ps.setString(3, history.getName());
			ps.setInt(4, history.getId());
			ps.setDate(5, history.getDate());
			ps.setTime(6, history.getTime());
			ps.setString(7, history.getNumber());
			ps.setString(8, history.getResult());
			ps.setFloat(9, history.getPrizeValue());
			check = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	
	public List<HistoryCheck> getHistoryChecks(String groupId, String groupName, int id) {
		List<HistoryCheck> list = new ArrayList<>();
		String query = "SELECT NGAYDO, GIODO, SODO, KETQUA, TIENTHUONG FROM LICHSUDO WHERE MANHOM = ? AND TENNHOM =? AND ID= ?";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, groupId);
			ps.setString(2, groupName);
			ps.setInt(3, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new HistoryCheck(rs.getDate(1), rs.getTime(2), rs.getString(3), rs.getString(4), rs.getFloat(5)));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void updateHistory(User newUser, User oldUser) {
		String query = "UPDATE LICHSUDO\r\n"
				+ "SET MANHOM = ?, TENNHOM = ?, HOTEN = ?, ID =  ? \r\n"
				+ "WHERE MANHOM = ? AND TENNHOM = ? AND HOTEN = ? AND ID = ? ";
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, newUser.getGroupId());
			ps.setString(2, newUser.getGroupName());
			ps.setString(3, newUser.getName());
			ps.setInt(4, newUser.getId());
			ps.setString(5, oldUser.getGroupId());
			ps.setString(6, oldUser.getGroupName());
			ps.setString(7, oldUser.getName());
			ps.setInt(8, oldUser.getId());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<HistoryCheck> getHistoryPage(List<HistoryCheck> list, int start, int end) {
		List<HistoryCheck> list1 = new ArrayList<>();
		for (int i = start; i < end; i++) {
			list1.add(list.get(i));
		}
		return list1;
	}
	
	public static void main(String[] args) {
		HitoryCheckDao dao = new HitoryCheckDao();
		HistoryCheck historyCheck = new HistoryCheck("ND", "NGUOIDUNG", "HỒ VĂN B", 2 , Date.valueOf("2022-05-03"), Time.valueOf("19:15:00"), "24", "win", 200000);
		int list = dao.addHistoryChecks(historyCheck);
		
		List<HistoryCheck> list1 =dao.getHistoryChecks("ND", "NGUOIDUNG", 2);
		System.out.println(list1);
	}
}
