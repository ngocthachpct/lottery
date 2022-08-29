package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.ListIndex;

public class ListIndexDao {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<String> getFirstPrize(String province, Date date) {
		List<String> list = new ArrayList<>();
		String query ="SELECT K.KETQUA FROM(LICHMOTHUONG L JOIN KETQUA K ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG) WHERE L.TINHTHANH = ? AND K.NGAYMO = ? AND G.TENGIAITHUONG =N'GIẢI NHẤT' ORDER BY G.TENGIAITHUONG";
		try {
			
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, province);
			ps.setDate(2, date);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<String> getSecondPrize(String province, Date date) {
		List<String> list = new ArrayList<>();
		String query ="SELECT K.KETQUA FROM(LICHMOTHUONG L JOIN KETQUA K ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG) WHERE L.TINHTHANH = ? AND K.NGAYMO = ? AND G.TENGIAITHUONG =N'GIẢI NHÌ' ORDER BY G.TENGIAITHUONG";
		try {
			
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, province);
			ps.setDate(2, date);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<String> getThirdPrize(String province, Date date) {
		List<String> list = new ArrayList<>();
		String query ="SELECT K.KETQUA FROM(LICHMOTHUONG L JOIN KETQUA K ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG) WHERE L.TINHTHANH = ? AND K.NGAYMO = ? AND G.TENGIAITHUONG =N'GIẢI BA' ORDER BY G.TENGIAITHUONG";
		try {
			
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, province);
			ps.setDate(2, date);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<String> getFourthPrize(String province, Date date) {
		List<String> list = new ArrayList<>();
		String query ="SELECT K.KETQUA FROM(LICHMOTHUONG L JOIN KETQUA K ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG) WHERE L.TINHTHANH = ? AND K.NGAYMO = ? AND G.TENGIAITHUONG =N'GIẢI TƯ' ORDER BY G.TENGIAITHUONG";
		try {
			
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, province);
			ps.setDate(2, date);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<String> getFifthPrize(String province, Date date) {
		List<String> list = new ArrayList<>();
		String query ="SELECT K.KETQUA FROM(LICHMOTHUONG L JOIN KETQUA K ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG) WHERE L.TINHTHANH = ? AND K.NGAYMO = ? AND G.TENGIAITHUONG =N'GIẢI NĂM' ORDER BY G.TENGIAITHUONG";
		try {
			
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, province);
			ps.setDate(2, date);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<String> getSixthPrize(String province, Date date) {
		List<String> list = new ArrayList<>();
		String query ="SELECT K.KETQUA FROM(LICHMOTHUONG L JOIN KETQUA K ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG) WHERE L.TINHTHANH = ? AND K.NGAYMO = ? AND G.TENGIAITHUONG =N'GIẢI SÁU' ORDER BY G.TENGIAITHUONG";
		try {
			
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, province);
			ps.setDate(2, date);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<String> getSeventhPrize(String province, Date date) {
		List<String> list = new ArrayList<>();
		String query ="SELECT K.KETQUA FROM(LICHMOTHUONG L JOIN KETQUA K ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG) WHERE L.TINHTHANH = ? AND K.NGAYMO = ? AND G.TENGIAITHUONG =N'GIẢI BẢY' ORDER BY G.TENGIAITHUONG";
		try {
			
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, province);
			ps.setDate(2, date);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<String> getSpecialPrize(String province, Date date) {
		List<String> list = new ArrayList<>();
		String query ="SELECT K.KETQUA FROM(LICHMOTHUONG L JOIN KETQUA K ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG) WHERE L.TINHTHANH = ? AND K.NGAYMO = ? AND G.TENGIAITHUONG =N'GIẢI ĐẶC BIỆT' ORDER BY G.TENGIAITHUONG";
		try {
			
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, province);
			ps.setDate(2, date);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static void main(String[] args) {
		
		ListIndexDao dao = new ListIndexDao();
		Date date = Date.valueOf("2022-05-03");
		List<String> list2 = dao.getFirstPrize("HÀ NỘI", date);
		List<String> list3 = dao.getSecondPrize("HÀ NỘI", date);
		List<String> list1 = dao.getSpecialPrize("HÀ NỘI", date);
		List<String> list4 = dao.getThirdPrize("HÀ NỘI", date);
		List<String> list6 = dao.getFifthPrize("HÀ NỘI", date);
		List<String> list5 = dao.getFourthPrize("HÀ NỘI", date);
		List<String> list8 = dao.getSeventhPrize("HÀ NỘI", date);
		List<String> list7 = dao.getSixthPrize("HÀ NỘI", date);
		
		ListIndex list = new ListIndex(date, "HÀ NỘI", list1, list2, list3, list4, list5, list6, list7, list8);
		 
		System.out.println(list.getSeventhPrize());
		
	}
}
