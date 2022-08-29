package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import context.DBContext;
import model.User;

public class LoginDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public User checkLogin(String usr, String pass) {
		try {
			String query = "SELECT * FROM (SELECT * FROM QUANLY UNION SELECT * FROM NGUOIDUNG) AS D WHERE D.TENTK = ? and D.MK = ? ";
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, usr);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while (rs.next()) {
				User user = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
				return user;
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		return null;
	}

}
