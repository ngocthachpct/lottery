package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListIndexDao;
import dao.LotteryDao;
import dao.HitoryCheckDao;
import model.HistoryCheck;
import model.ListIndex;
import model.User;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchHomePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchHomePageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		try {

			String province = request.getParameter("province");
			String number = request.getParameter("number");
			Date date = Date.valueOf(request.getParameter("date"));
			LotteryDao dao = new LotteryDao();
			boolean check = dao.checkLotteryNumber(province, number, date);
			User user = SessionUtils.getLoginedUsername(request);
			
			String pattern = "yyyy-MM-dd";
			String pattern1 = "HH:mm:ss";
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
			SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat(pattern1);
			Date currDate = Date.valueOf(LocalDate.now());
			Date checkDate = Date.valueOf(simpleDateFormat.format(currDate));
			Time currTime = Time.valueOf(LocalTime.now());
			Time checkTime = Time.valueOf(simpleDateFormat1.format(currTime));
			HitoryCheckDao hitoryCheckDao = new HitoryCheckDao();
			if (number != "") {
				
				if (check == true) {
					
					float prizeValue = dao.getLotteryPrize(province, date, number);
					if (user != null) {
						HistoryCheck history = new HistoryCheck(user.getGroupId(), user.getGroupName(), user.getName(), user.getId(), checkDate, checkTime, number, "win", prizeValue);
						hitoryCheckDao.addHistoryChecks(history);
					}
					DecimalFormat df = new DecimalFormat("#");
					request.setAttribute("date", date);
					request.setAttribute("number", number);
					request.setAttribute("province", province);
					request.setAttribute("note1", "Chúc mừng bạn đã trúng thưởng");
					request.setAttribute("note2", "Giá trị giải thưởng của bạn là");
					request.setAttribute("note3", df.format(prizeValue));
				} else {
					if (user!=null) {
						HistoryCheck history = new HistoryCheck(user.getGroupId(), user.getGroupName(), user.getName(), user.getId(), checkDate, checkTime, number, "No win", 0);
						hitoryCheckDao.addHistoryChecks(history);
					}
					request.setAttribute("note1", "Chia buồn");
					request.setAttribute("note2", "Số của bạn không trúng thưởng");
				}

			} else {
				if (check == true) {
					if (user != null) {
						HistoryCheck history = new HistoryCheck(user.getGroupId(), user.getGroupName(), user.getName(), user.getId(), checkDate, checkTime, "No check", "No check", 0);
						hitoryCheckDao.addHistoryChecks(history);
					}
					request.setAttribute("date", date);
					request.setAttribute("province", province);
					ListIndexDao listIndexDao = new ListIndexDao();
					List<String> specialPrize = listIndexDao.getSpecialPrize(province, date);
					List<String> firstPrize = listIndexDao.getFirstPrize(province, date);
					List<String> secondPrize = listIndexDao.getSecondPrize(province, date);
					List<String> thirdPrize = listIndexDao.getThirdPrize(province, date);
					List<String> fourthPrize = listIndexDao.getFourthPrize(province, date);
					List<String> fifthPrize = listIndexDao.getFifthPrize(province, date);
					List<String> sixthPrize = listIndexDao.getSixthPrize(province, date);
					List<String> seventhPrize = listIndexDao.getSeventhPrize(province, date);
					ListIndex list = new ListIndex(date, province, specialPrize, firstPrize, secondPrize, thirdPrize, fourthPrize, fifthPrize, sixthPrize, seventhPrize);
					request.setAttribute("list", list);
				} else {
					if (user != null) {
						HistoryCheck history = new HistoryCheck(user.getGroupId(), user.getGroupName(), user.getName(), user.getId(), checkDate, checkTime, "No check", "No check", 0);
						hitoryCheckDao.addHistoryChecks(history);
					}
					
					request.setAttribute("note1", "không có tỉnh nào xổ số vào ngày này");
				}
			}
			request.getRequestDispatcher("search.jsp").forward(request, response);

		} catch (

		Exception e) {
			request.setAttribute( "note1", "vui lòng chọn ngày dò");
			request.getRequestDispatcher("search.jsp").forward(request, response);
		}
	}

}
