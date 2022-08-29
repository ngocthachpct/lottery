package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import context.DBContext;
import model.User;

public class ListUserDao {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<User> getAllUser(String view) {
		List<User> list = new ArrayList<>();
		String query = "";
		if (view.equalsIgnoreCase("none")) {
			query = "SELECT * FROM (SELECT * FROM QUANLY UNION SELECT * FROM NGUOIDUNG) AS D";
		}else if (view.equalsIgnoreCase("increase")) {
			query = "SELECT * FROM (SELECT * FROM QUANLY UNION SELECT * FROM NGUOIDUNG) AS D ORDER BY D.HOTEN DESC";
		}else {
			query = "SELECT * FROM (SELECT * FROM QUANLY UNION SELECT * FROM NGUOIDUNG) AS D ORDER BY D.HOTEN ASC";
		}

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<User> getAdmin(String view) {
		List<User> list = new ArrayList<>();
		String query = "";
		if (view.equalsIgnoreCase("none")) {
			query = "SELECT * FROM QUANLY";
		} else if (view.equalsIgnoreCase("increase")) {
			query = "SELECT * FROM QUANLY ORDER BY HOTEN DESC";
		} else {
			query = "SELECT * FROM QUANLY ORDER BY HOTEN ASC";
		}
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<User> getGuest(String view) {
		List<User> list = new ArrayList<>();
		String query="";
		if (view.equalsIgnoreCase("none")) {
			query = "SELECT * FROM NGUOIDUNG";
		} else if (view.equalsIgnoreCase("increase")) {
			query = "SELECT * FROM NGUOIDUNG ORDER BY HOTEN DESC";
		} else {
			query = "SELECT * FROM NGUOIDUNG ORDER BY HOTEN ASC";
		}
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9)));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<User> getUserPage(List<User> list, int start, int end) {
		List<User> list1 = new ArrayList<>();
		for (int i = start; i < end; i++) {
			list1.add(list.get(i));
		}
		return list1;
	}

	public User getUser(int id, String role) {
		String query="";
		if (role.equalsIgnoreCase("QL")) {
			query = "SELECT * FROM QUANLY WHERE ID = ?";
		}else {
			query = "SELECT * FROM NGUOIDUNG WHERE ID = ?";
		}
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
	
	public User getUserByMailUsername(String usr, String mail) {
		String query = "SELECT * FROM (SELECT * FROM QUANLY UNION SELECT * FROM NGUOIDUNG) AS D\r\n"
				+ "WHERE D.TENTK = ? AND D.EMAIL = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, usr);
			ps.setString(2, mail);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));

			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;
	}
	
	public User getUserByUsername(String usr) {
		String query = "SELECT * FROM (SELECT * FROM QUANLY UNION SELECT * FROM NGUOIDUNG) AS D\r\n"
				+ "WHERE D.TENTK = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, usr);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));

			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;
	}
	

	public int updateUser(User user, User oldUser, String role) {
		String query;
		if (role.equalsIgnoreCase("QL")) {
			query = "UPDATE QUANLY\r\n"
					+ "SET MANHOM = ? , TENNHOM = ?, HOTEN = ? , TENTK = ?, MK = ?, DIACHI = ?, EMAIL = ?, DT = ?\r\n"
					+ "WHERE MANHOM = ? AND TENNHOM = ? AND HOTEN = ?  AND TENTK = ? AND MK = ? AND DIACHI = ? AND EMAIL = ?  AND DT = ?";
		}  else {
			query = "UPDATE NGUOIDUNG\r\n"
					+ "SET MANHOM = ? , TENNHOM = ?, HOTEN = ? , TENTK = ?, MK = ?, DIACHI = ?, EMAIL = ?, DT = ?\r\n"
					+ "WHERE MANHOM = ? AND TENNHOM = ? AND HOTEN = ?  AND TENTK = ? AND MK = ? AND DIACHI = ? AND EMAIL = ?  AND DT = ?";
		}
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, user.getGroupId());
			ps.setString(2, user.getGroupName());
			ps.setString(3, user.getName());
			ps.setString(4, user.getUsr());
			ps.setString(5, user.getPwd());
			ps.setString(6, user.getAddress());
			ps.setString(7, user.getMail());
			ps.setString(8, user.getPhone());
			ps.setString(9, oldUser.getGroupId());
			ps.setString(10, oldUser.getGroupName());
			ps.setString(11, oldUser.getName());
			ps.setString(12, oldUser.getUsr());
			ps.setString(13, oldUser.getPwd());
			ps.setString(14, oldUser.getAddress());
			ps.setString(15, oldUser.getMail());
			ps.setString(16, oldUser.getPhone());
			check = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();;
		}
		return check;
	}
	
	public int updatePassword(String usr, String pwd, String role, String email) {
		String query;
		if (role.equalsIgnoreCase("QL")) {
			query = "UPDATE QUANLY\r\n"
					+ "SET MK = ? \r\n"
					+ "WHERE TENTK =? AND EMAIL = ?";
		} else {
			query = "UPDATE NGUOIDUNG\r\n"
					+ "SET MK = ? \r\n"
					+ "WHERE TENTK =? AND EMAIL = ?";
		}
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, pwd);
			ps.setString(2, usr);
			ps.setString(3, email);
			check = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	
	public int deleteUser(int id, String role) {
		String query;
		if (role.equalsIgnoreCase("QL")) {
			query = "DELETE FROM LICHSUDO WHERE MANHOM = 'QL' AND TENNHOM = 'QUANLY' AND ID = ? DELETE FROM QUANLY WHERE MANHOM = 'QL' AND TENNHOM = 'QUANLY' AND ID = ?";
		} else {
			query = "DELETE FROM LICHSUDO WHERE MANHOM = 'ND' AND TENNHOM = 'NGUOIDUNG' AND ID = ?  DELETE FROM NGUOIDUNG WHERE MANHOM = 'ND' AND TENNHOM = 'NGUOIDUNG' AND ID = ?";
		}
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			ps.setInt(2, id);
			check = ps.executeUpdate();

		} catch (Exception e) {
			check= -1;
		}
		return check;
	}
	
	public int deleteListUser(int id) {
		String query = "DELETE FROM LICHSUDO WHERE MANHOM = 'ND' AND TENNHOM = 'NGUOIDUNG' AND ID = ?  DELETE FROM NGUOIDUNG WHERE MANHOM = 'ND' AND TENNHOM = 'NGUOIDUNG' AND ID = ? DELETE FROM LICHSUDO WHERE MANHOM = 'QL' AND TENNHOM = 'QUANLY' AND ID = ?  DELETE FROM NGUOIDUNG WHERE MANHOM = 'QL' AND TENNHOM = 'QUANLY' AND ID = ?";
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			ps.setInt(2, id);
			ps.setInt(3, id);
			ps.setInt(4, id);
			check = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();;
		}
		return check;
	}
	public List<User> searchUser(String key) {
		List<User> list = new ArrayList<User>();
		String query = "SELECT D.MANHOM, D.TENNHOM, D.HOTEN, D.TENTK, D.MK, D.ID, D.DIACHI, D.EMAIL, D.DT FROM (SELECT * FROM QUANLY UNION SELECT * FROM NGUOIDUNG) AS D "
					   + "WHERE D.HOTEN LIKE ? OR D.TENTK LIKE ? ";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%"+key +"%");
			ps.setString(2, "%"+key +"%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9)));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public static void main(String[] args) throws Exception {
		ListUserDao dao = new ListUserDao();
		User check;
		check = dao.getUser(6, "nd");
		System.out.println(check);
		
		

	}
}
