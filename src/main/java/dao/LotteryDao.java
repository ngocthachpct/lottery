package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
	

import context.DBContext;
import model.LotteryType;
import model.Prize;
import model.PrizeOpening;
import model.Result;

public class LotteryDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Prize> getPrizes(String view) {
		List<Prize> list = new ArrayList<>();
		String query = "";
		if (view.equalsIgnoreCase("none")) {
			query = "SELECT * FROM GIAITHUONG";
		}else if (view.equalsIgnoreCase("increase")) {
			query = "SELECT * FROM GIAITHUONG ORDER BY TENLOAI DESC";
		}else {
			query = "SELECT * FROM GIAITHUONG ORDER BY TENLOAI ASC";
		}
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Prize(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getFloat(5), rs.getInt(6), rs.getInt(7), rs.getDate(8)));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Prize getPrizeById(int id) {
		String query = "SELECT * FROM GIAITHUONG WHERE [MAGIAITHUONG] = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Prize(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getFloat(5), rs.getInt(6), rs.getInt(7), rs.getDate(8));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
	
	public int getPrizeId(String name, String typeName) {
		String query = "SELECT TOP 1 MAGIAITHUONG FROM GIAITHUONG WHERE TENGIAITHUONG = ? AND TENLOAI = ? ORDER BY NGAYTAOGIAI DESC";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, typeName);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int updatePrize(Prize prize, Prize oldPrize , int id) {
		String query = "UPDATE GIAITHUONG\r\n"
				+ "SET TENGIAITHUONG = ?, TENLOAI = ?, GIAVE= ?, NGAYTAOGIAI= ?, SOTIEN= ?, SOCHUSO= ?, SOLANQUAY= ?\r\n"
				+ "WHERE TENGIAITHUONG = ? AND TENLOAI = ? AND GIAVE= ? AND NGAYTAOGIAI= ? AND SOTIEN= ? AND SOCHUSO= ? AND SOLANQUAY= ? AND MAGIAITHUONG = ?";
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, prize.getPrizeName());
			ps.setString(2, prize.getTypeName());
			ps.setFloat(3, prize.getPrice());
			ps.setDate(4, prize.getCreateDate());
			ps.setFloat(5, prize.getPrizeValue());
			ps.setInt(6, prize.getNumberDigits());
			ps.setInt(7, prize.getTotalSpins());
			ps.setString(8, oldPrize.getPrizeName());
			ps.setString(9, oldPrize.getTypeName());
			ps.setFloat(10, oldPrize.getPrice());
			ps.setDate(11, oldPrize.getCreateDate());
			ps.setFloat(12, oldPrize.getPrizeValue());
			ps.setInt(13, oldPrize.getNumberDigits());
			ps.setInt(14, oldPrize.getTotalSpins());
			ps.setInt(15, id);
			check = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	
	public int addPrize(Prize prize) {
		String query = "INSERT INTO GIAITHUONG(TENGIAITHUONG, TENLOAI, GIAVE, NGAYTAOGIAI, SOTIEN, SOCHUSO, SOLANQUAY) VALUES (?,?,?,?,?,?,?)";
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, prize.getPrizeName());
			ps.setString(2, prize.getTypeName());
			ps.setFloat(3, prize.getPrice());
			ps.setDate(4, prize.getCreateDate());
			ps.setFloat(5, prize.getPrizeValue());
			ps.setInt(6, prize.getNumberDigits());
			ps.setInt(7, prize.getTotalSpins());
			check = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}

	public List<LotteryType> getLotteryType(String view) {
		List<LotteryType> list = new ArrayList<>();
		String query = "";
		if (view.equalsIgnoreCase("none")) {
			query = "SELECT * FROM LOAIXOSO";
		}else if (view.equalsIgnoreCase("increase")) {
			query = "SELECT * FROM LOAIXOSO ORDER BY MALOAI DESC";
		}else {
			query = "SELECT * FROM LOAIXOSO ORDER BY MALOAI ASC";
		}
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new LotteryType(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getInt(5),
						rs.getInt(6), rs.getDate(7), rs.getDate(8)));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public LotteryType getLotteryTypeById(int id) {
		String query = "SELECT * FROM LOAIXOSO WHERE [MALOAI] = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new LotteryType(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getInt(5),
						rs.getInt(6), rs.getDate(7), rs.getDate(8));

			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;
	}

	public int updateLotteryType(LotteryType lotteryType, LotteryType oldLotteryType) {
		String query = "UPDATE LOAIXOSO\r\n"
				+ "SET TENLOAI = ?, TINHTHANH = ? , GIAVE = ? ,	SOCHUSO = ?, TONGSOLANQUAY = ? , NGAYBDPHATHANH = ?,NGAYKTPHATHANH =?\r\n"
				+ "WHERE TENLOAI = ? and TINHTHANH =? and GIAVE = ? and	SOCHUSO = ? and TONGSOLANQUAY = ? and NGAYBDPHATHANH = ? and NGAYKTPHATHANH =?";
		
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, lotteryType.getTypeName());
			ps.setString(2, lotteryType.getProvince());
			ps.setFloat(3, lotteryType.getPrice());
			ps.setInt(4, lotteryType.getNumberDigits());
			ps.setInt(5, lotteryType.getTotalSpins());
			ps.setDate(6, lotteryType.getDateStart());
			ps.setDate(7, lotteryType.getDateEnd());
			ps.setString(8, oldLotteryType.getTypeName());
			ps.setString(9, oldLotteryType.getProvince());
			ps.setFloat(10, oldLotteryType.getPrice());
			ps.setInt(11, oldLotteryType.getNumberDigits());
			ps.setInt(12, oldLotteryType.getTotalSpins());
			ps.setDate(13, oldLotteryType.getDateStart());
			ps.setDate(14, oldLotteryType.getDateEnd());
			check = ps.executeUpdate();

		} catch (Exception e) {
			check = -1;
		}
		return check;
	}
	
	public int addLotteryType(LotteryType lotteryType) {
		String query = "INSERT INTO LOAIXOSO(TENLOAI, TINHTHANH, GIAVE, SOCHUSO, TONGSOLANQUAY, NGAYBDPHATHANH, NGAYKTPHATHANH) VALUES (?,?,?,?,?,?,?)";
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, lotteryType.getTypeName());
			ps.setString(2, lotteryType.getProvince());
			ps.setFloat(3, lotteryType.getPrice());
			ps.setInt(4, lotteryType.getNumberDigits());
			ps.setInt(5, lotteryType.getTotalSpins());
			ps.setDate(6, lotteryType.getDateStart());
			ps.setDate(7, lotteryType.getDateEnd());
			check = ps.executeUpdate();
		} catch (Exception e) {
			check = -1;
		}
		return check;
	}

	public List<PrizeOpening> getPrizeOpening(String view) {
		List<PrizeOpening> list = new ArrayList<>();
		String query = "";
		if (view.equalsIgnoreCase("none")) {
			query = "SELECT * FROM LICHMOTHUONG";
		}else if (view.equalsIgnoreCase("increase")) {
			query = "SELECT * FROM LICHMOTHUONG ORDER BY TINHTHANH DESC";
		}else {
			query = "SELECT * FROM LICHMOTHUONG ORDER BY TINHTHANH ASC";
		}
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new PrizeOpening(rs.getInt(1), rs.getDate(2), rs.getTime(3), rs.getString(4),
						rs.getString(5), rs.getFloat(6), rs.getDate(7)));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public PrizeOpening getPrizeOpeningById(int id) {
		String query = "SELECT * FROM LICHMOTHUONG WHERE [MALICHMOTHUONG] = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new PrizeOpening(rs.getInt(1), rs.getDate(2), rs.getTime(3), rs.getString(4),
						rs.getString(5), rs.getFloat(6), rs.getDate(7));

			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;
	}

	public int getPOId(Date date, String province) {
		String query = "SELECT MALICHMOTHUONG FROM LICHMOTHUONG WHERE NGAY = ? AND TINHTHANH = ? ";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setDate(1, date);
			ps.setString(2, province);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);

			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
	}
	
	public int updatePrizeOpening(PrizeOpening newPrizeOpening, PrizeOpening oldPrizeOpening) {
		String query = "UPDATE LICHMOTHUONG\r\n"
				+ "SET NGAY = ?, GIO =?, TENLOAI = ?,  TINHTHANH = ?,  GIAVE = ?,  NGAYBDPHATHANH = ?\r\n"
				+ "WHERE NGAY = ? AND GIO =? AND TENLOAI = ? AND  TINHTHANH = ? AND  GIAVE = ? AND  NGAYBDPHATHANH = ?";
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setDate(1, newPrizeOpening.getDate());
			ps.setTime(2, newPrizeOpening.getTime());
			ps.setString(3, newPrizeOpening.getTypeName());
			ps.setString(4, newPrizeOpening.getProvince());
			ps.setFloat(5, newPrizeOpening.getPrice());
			ps.setDate(6, newPrizeOpening.getDateStart());
			ps.setDate(7, oldPrizeOpening.getDate());
			ps.setTime(8, oldPrizeOpening.getTime());
			ps.setString(9, oldPrizeOpening.getTypeName());
			ps.setString(10, oldPrizeOpening.getProvince());
			ps.setFloat(11, oldPrizeOpening.getPrice());
			ps.setDate(12, oldPrizeOpening.getDateStart());
			check = ps.executeUpdate();

		} catch (Exception e) {
			check = -1;
		}
		return check;
	}
	
	public int addPrizeOpening(PrizeOpening prizeOpening) {
		String query = "INSERT INTO LICHMOTHUONG(NGAY, GIO, TENLOAI, TINHTHANH, GIAVE, NGAYBDPHATHANH) VALUES (?,?,?,?,?,?)";
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setDate(1, prizeOpening.getDate());
			ps.setTime(2, prizeOpening.getTime());
			ps.setString(3, prizeOpening.getTypeName());
			ps.setString(4, prizeOpening.getProvince());
			ps.setFloat(5, prizeOpening.getPrice());
			ps.setDate(6, prizeOpening.getDateStart());
			
			check = ps.executeUpdate();
		} catch (Exception e) {
			check = -1;
		}
		return check;
	}

	public List<Result> getResult(String view) {
		List<Result> list = new ArrayList<>();
		String query = "";
		if (view.equalsIgnoreCase("none")) {
			query = "SELECT K.MAKETQUA, K.LANQUAY, G.TENGIAITHUONG, L.TINHTHANH, K.KETQUA, K.NGAYMO, L.TENLOAI FROM KETQUA K JOIN LICHMOTHUONG L ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG";
		}else if (view.equalsIgnoreCase("increase")) {
			query = "SELECT K.MAKETQUA, K.LANQUAY, G.TENGIAITHUONG, L.TINHTHANH, K.KETQUA, K.NGAYMO, L.TENLOAI FROM KETQUA K JOIN LICHMOTHUONG L ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG ORDER BY L.TINHTHANH DESC";
		}else {
			query = "SELECT K.MAKETQUA, K.LANQUAY, G.TENGIAITHUONG, L.TINHTHANH, K.KETQUA, K.NGAYMO, L.TENLOAI FROM KETQUA K JOIN LICHMOTHUONG L ON K.MALICHMOTHUONG = L.MALICHMOTHUONG JOIN GIAITHUONG G ON G.MAGIAITHUONG = K.MAGIAITHUONG ORDER BY L.TINHTHANH ASC";
		}
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Result(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getString(7)));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Result getResultById(int id) {
		String query = "SELECT * FROM KETQUA WHERE MAKETQUA = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Result(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getDate(8));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	public int updateResult(Result newResult, Result oldResult) {
		String query = "UPDATE KETQUA\r\n"
				+ "SET LANQUAY = ? , MAGIAITHUONG = ? , MALICHMOTHUONG = ?, KETQUA = ?, NGAYMO = ?, TENLOAI = ?, TENGIAITHUONG = ?\r\n"
				+ "WHERE LANQUAY = ? AND MAGIAITHUONG = ? AND MALICHMOTHUONG = ? AND KETQUA = ? AND NGAYMO = ? AND TENLOAI= ? AND TENGIAITHUONG = ?";
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, newResult.getTurn());
			ps.setInt(2, newResult.getPrizeId());
			ps.setInt(3, newResult.getPoId());
			ps.setString(4, newResult.getResult());
			ps.setDate(5, newResult.getOpenDate());
			ps.setString(6, newResult.getTypeName());
			ps.setString(7, newResult.getPrizeName());
			ps.setInt(8, oldResult.getTurn());
			ps.setInt(9, oldResult.getPrizeId());
			ps.setInt(10, oldResult.getPoId());
			ps.setString(11, oldResult.getResult());
			ps.setDate(12, oldResult.getOpenDate());
			ps.setString(13, oldResult.getTypeName());
			ps.setString(14, oldResult.getPrizeName());
			check = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return check;
	}
	
	public int addResult(Result result) {
		String query = "INSERT INTO KETQUA(MAGIAITHUONG, TENGIAITHUONG, TENLOAI, LANQUAY, MALICHMOTHUONG, KETQUA, NGAYMO) \r\n"
				+ "VALUES (?, ?, ?, ?, ?, ? ,?)";
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, result.getPrizeId());
			ps.setString(2, result.getPrizeName());
			ps.setString(3, result.getTypeName());
			ps.setInt(4, result.getTurn());
			ps.setInt(5, result.getPoId());;
			ps.setString(6, result.getResult());
			ps.setDate(7, result.getOpenDate());
			check = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	
	public int deleteLottery(String objectives, int id) {
		String query;
		if (objectives.equalsIgnoreCase("lotterytype")) {
			query = "DELETE FROM LOAIXOSO WHERE MALOAI = ?";
		} else if (objectives.equalsIgnoreCase("prizeopening")) {
			query = "DELETE FROM LICHMOTHUONG WHERE MALICHMOTHUONG = ?";
		} else if (objectives.equalsIgnoreCase("prize")) {
			query = "DELETE FROM GIAITHUONG WHERE MAGIAITHUONG = ?";
		} else {
			query = "DELETE FROM KETQUA WHERE MAKETQUA = ?";
		}
		int check = 0;
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1,id);
			
			check = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	
	public boolean checkLotteryNumber(String province, String number, Date date) {
		String query = "";
		if (number != "") {
			query = "SELECT L.NGAY, L.TINHTHANH, K.KETQUA FROM KETQUA K JOIN LICHMOTHUONG L ON K.MALICHMOTHUONG = L.MALICHMOTHUONG\r\n"
					+ "WHERE K.KETQUA = ? AND K.NGAYMO =? AND L.TINHTHANH= ?";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(query);
				ps.setString(1, number);
				ps.setDate(2, date);
				ps.setString(3, province);
				rs = ps.executeQuery();
				while (rs.next()) {
					return true;
				}

			} catch (Exception e) {
				return false;
			}
			return false;
		}else {
			query = "SELECT L.NGAY, L.TINHTHANH FROM KETQUA K JOIN LICHMOTHUONG L ON K.MALICHMOTHUONG = L.MALICHMOTHUONG\r\n"
					+ "WHERE K.NGAYMO = ? AND L.TINHTHANH= ?";
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(query);
				ps.setDate(1, date);
				ps.setString(2, province);
				rs = ps.executeQuery();
				while (rs.next()) {
					return true;
				}

			} catch (Exception e) {
				return false;
			}
			return false;
		}
		
		
	}
	
	public float getLotteryPrize(String province, Date date, String number) {
		String query = "SELECT G.SOTIEN\r\n"
				+ "FROM KETQUA K JOIN LICHMOTHUONG L ON K.MALICHMOTHUONG = L.MALICHMOTHUONG  JOIN GIAITHUONG G ON K.MAGIAITHUONG = G.MAGIAITHUONG\r\n"
				+ "WHERE K.KETQUA = ? AND K.NGAYMO = ? AND L.TINHTHANH= ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, number);
			ps.setDate(2, date);
			ps.setString(3, province);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getFloat(1);

			}

		} catch (Exception e) {
			return 0;
		}
		return 0;
	}
	
	public <E> List<E> getListPage(List<E> list, int start, int end) {
		List<E> list1 = new ArrayList<>();
		for (int i = start; i < end; i++) {
			list1.add(list.get(i));
		}
		return list1;
	}

	public static void main(String[] args) throws Exception {
		
		LotteryDao dao = new LotteryDao();
		Result result = dao.getResultById(1);
		
		System.out.println(result);
		
	}
}
