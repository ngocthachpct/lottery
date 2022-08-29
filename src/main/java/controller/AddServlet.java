package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LotteryDao;
import dao.RegisterDao;
import model.ListIndex;
import model.LotteryType;
import model.Prize;
import model.PrizeOpening;
import model.Result;
import model.User;

/**
 * Servlet implementation class AddServlet
 */

public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

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
			RegisterDao registerDao = new RegisterDao();
			LotteryDao lotteryDao = new LotteryDao();
			String objectives = request.getParameter("objectives");
			if (objectives.equalsIgnoreCase("user")) {
				String usr = request.getParameter("usr");
				String pwd = request.getParameter("pwd");
				String name = request.getParameter("name");
				String mail = request.getParameter("mail");
				String address = request.getParameter("address");
				String phone = request.getParameter("phone");
				String repass = request.getParameter("repass");
				String groupId = request.getParameter("groupId");
				String groupName = request.getParameter("groupName");
				
				if (registerDao.checkUserName(usr)) {
					request.setAttribute("warning", "Your username already used");
					request.getRequestDispatcher("user-manager.jsp").forward(request, response);
				} else if (!pwd.equals(repass)) {
					request.setAttribute("warning", "Confirm Password different password!");
					request.getRequestDispatcher("user-manager.jsp").forward(request, response);
				} else {
					MessageDigest md = MessageDigest.getInstance("MD5");
					byte[] messageDigest = md.digest(pwd.getBytes()); 
					BigInteger no = new BigInteger(1, messageDigest); 
					  
		            // Convert message digest into hex value 
		            String pass = no.toString(16); 
		            while (pass.length() < 32) { 
		                pass = "0" + pass; 
		            } 
					User user = new User(groupId, groupName, name, usr, pass, address, mail, phone);
					try {
						int check = registerDao.addAccount(user);
						if (check > 0) {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "tạo mới thành công");
							request.getRequestDispatcher("user-manager.jsp").forward(request, response);
						}else {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "tạo mới thất bại");
							request.getRequestDispatcher("user-manager.jsp").forward(request, response);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					
				}
			}else if (objectives.equalsIgnoreCase("lotterytype")) {
				String typeName = request.getParameter("typename");
				String province = request.getParameter("province");
				float price = Float.parseFloat(request.getParameter("price"));
				int number = Integer.parseInt(request.getParameter("number"));
				int spin = Integer.parseInt(request.getParameter("spin"));
				Date issue = Date.valueOf(request.getParameter("issue"));
				Date complete = Date.valueOf(request.getParameter("complete")) ;
				LotteryType lotteryType = new LotteryType(typeName, province, price, number, spin, issue, complete);
				try {

					int checkSuccess = lotteryDao.addLotteryType(lotteryType);
					if (checkSuccess > 0) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "tạo mới thành công");
						RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
						rd.forward(request, response);
					} else {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "tạo mới thất bại");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					}
				} catch (Exception e) {
					request.setAttribute("check", "y");
					request.setAttribute("alert", "tạo mới thất bại");
					request.getRequestDispatcher("lottery.jsp").forward(request, response);
				}
			}else if (objectives.equalsIgnoreCase("prize")) {
				String prizeName = request.getParameter("prizeName");
				String typeName = request.getParameter("typename");
				float price = Float.parseFloat(request.getParameter("price"));
				int number = Integer.parseInt(request.getParameter("number"));
				int spin = Integer.parseInt(request.getParameter("spin"));
				float prizeValue = Float.parseFloat(request.getParameter("value"));
				String pattern = "yyyy-MM-dd";
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
				Date createDate = Date.valueOf(simpleDateFormat.format(Date.valueOf(LocalDate.now())));
				Prize prize = new Prize(prizeName, typeName, price, createDate, prizeValue, number, spin);
				try {

					int checkSuccess = lotteryDao.addPrize(prize);
					if (checkSuccess > 0) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "tạo mới thành công");
						RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
						rd.forward(request, response);
					} else {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "tạo mới thất bại");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else if (objectives.equalsIgnoreCase("prizeopening")) {
				String typeName = request.getParameter("typename");
				String province = request.getParameter("province");
				float price = Float.parseFloat(request.getParameter("price"));
				Time time = Time.valueOf(request.getParameter("time"));
				Date issue = Date.valueOf(request.getParameter("issue"));
				Date date = Date.valueOf(request.getParameter("date")) ;
				PrizeOpening prizeOpening = new PrizeOpening(date, time, typeName, province, price, issue);
				try {

					int checkSuccess = lotteryDao.addPrizeOpening(prizeOpening);
					if (checkSuccess > 0) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "tạo mới thành công");
						RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
						rd.forward(request, response);
					} else {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "tạo mới thất bại");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					}
				} catch (Exception e) {
					request.setAttribute("check", "y");
					request.setAttribute("alert", "tạo mới thất bại");
					request.getRequestDispatcher("lottery.jsp").forward(request, response);
				}
			}else if (objectives.equalsIgnoreCase("result")) {
				String typeName = request.getParameter("typename");
				String province = request.getParameter("province");
				int prizeId ;
				Date issue = Date.valueOf(request.getParameter("issue"));
				int poId = lotteryDao.getPOId(issue, province);
				String special =  request.getParameter("special");
				String firt =  request.getParameter("firt");
				String second1 =  request.getParameter("second1");
				String second2 =  request.getParameter("second2");
				String third1 =  request.getParameter("third1");
				String third2 =  request.getParameter("third2");
				String third3 =  request.getParameter("third3");
				String third4 =  request.getParameter("third4");
				String third5 =  request.getParameter("third5");
				String third6 =  request.getParameter("third6");
				String fourth1 =  request.getParameter("fourth1");
				String fourth2 =  request.getParameter("fourth2");
				String fourth3 =  request.getParameter("fourth3");
				String fourth4 =  request.getParameter("fourth4");
				String fifth1 =  request.getParameter("fifth1");
				String fifth2 =  request.getParameter("fifth2");
				String fifth3 =  request.getParameter("fifth3");
				String fifth4 =  request.getParameter("fifth4");
				String fifth5 =  request.getParameter("fifth5");
				String fifth6 =  request.getParameter("fifth6");
				String sixth1 =  request.getParameter("sixth1");
				String sixth2 =  request.getParameter("sixth2");
				String sixth3 =  request.getParameter("sixth3");
				String seventh1 =  (request.getParameter("seventh1"));
				String seventh2 =  (request.getParameter("seventh2"));
				String seventh3 =  (request.getParameter("seventh3"));
				String seventh4 =  (request.getParameter("seventh4"));
				List<String> listSpecial = new ArrayList<String>();
				listSpecial.add(special);
				List<String> listFirt = new ArrayList<String>();
				listFirt.add(firt);
				List<String> second = new ArrayList<String>();
				second.add(second1);
				second.add(second2);
				List<String> third = new ArrayList<String>();
				third.add(third1);
				third.add(third2);
				third.add(third3);
				third.add(third4);
				third.add(third5);
				third.add(third6);
				List<String> fourth = new ArrayList<String>();
				fourth.add(fourth1);
				fourth.add(fourth2);
				fourth.add(fourth3);
				fourth.add(fourth4);
				List<String> fifth = new ArrayList<String>();
				fifth.add(fifth1);
				fifth.add(fifth2);
				fifth.add(fifth3);
				fifth.add(fifth4);
				fifth.add(fifth5);
				fifth.add(fifth6);
				List<String> sixth = new ArrayList<String>();
				sixth.add(sixth1);
				sixth.add(sixth2);
				sixth.add(sixth3);
				List<String> seventh = new ArrayList<String>();
				seventh.add(seventh1);
				seventh.add(seventh2);
				seventh.add(seventh3);
				seventh.add(seventh4);
				
				ListIndex list = new ListIndex(listSpecial, listFirt, second, third, fourth, fifth, sixth, seventh);
				Result result ;
				int checkSuccess;
				
				try {
					for(String resultTurn : list.getSpecialPrize()) {
						prizeId = lotteryDao.getPrizeId("GIẢI ĐẶC BIỆT", typeName);
						result = new Result(1, typeName, "GIẢI ĐẶC BIỆT", province, resultTurn, issue, poId, prizeId);
						checkSuccess = lotteryDao.addResult(result);
						if (checkSuccess < 0){
							request.setAttribute("check", "y");
							request.setAttribute("alert", "tạo mới thất bại");
							request.getRequestDispatcher("lottery.jsp").forward(request, response);
						}
					}
					
					for(String resultTurn : list.getFirstPrize()) {
						prizeId = lotteryDao.getPrizeId("GIẢI NHẤT", typeName);
						result = new Result(1, typeName, "GIẢI NHẤT" , province, resultTurn, issue, poId, prizeId);
						checkSuccess = lotteryDao.addResult(result);
						if (checkSuccess < 0){
							request.setAttribute("check", "y");
							request.setAttribute("alert", "tạo mới thất bại");
							request.getRequestDispatcher("lottery.jsp").forward(request, response);
						}
					}
					
					for(String resultTurn : list.getSecondPrize()) {
						prizeId = lotteryDao.getPrizeId("GIẢI NHÌ", typeName);
						for(int j = 1 ; j<= 2; j++) {
							result = new Result(j, typeName, "GIẢI NHÌ", province, resultTurn, issue, poId, prizeId);
							checkSuccess = lotteryDao.addResult(result);
							if (checkSuccess < 0){
								request.setAttribute("alert", "tạo mới thất bại");
								request.getRequestDispatcher("lottery.jsp").forward(request, response);
							}
						}	
					}
					
					for(String resultTurn : list.getThirdPrize()) {
						prizeId = lotteryDao.getPrizeId("GIẢI BA", typeName);
						for(int j = 1 ; j<=6; j++) {
							result = new Result(j, typeName, "GIẢI BA", province, resultTurn, issue, poId, prizeId);
							checkSuccess = lotteryDao.addResult(result);
							if (checkSuccess < 0){
								request.setAttribute("check", "y");
								request.setAttribute("alert", "tạo mới thất bại");
								request.getRequestDispatcher("lottery.jsp").forward(request, response);
							}
						}	
					}
					
					for(String resultTurn : list.getFourthPrize()) {
						prizeId = lotteryDao.getPrizeId("GIẢI TƯ", typeName);
						for(int j = 1 ; j<=4; j++) {
							
							result = new Result(j, typeName, "GIẢI TƯ", province, resultTurn, issue, poId, prizeId);
							checkSuccess = lotteryDao.addResult(result);
							if (checkSuccess < 0){
								request.setAttribute("check", "y");
								request.setAttribute("alert", "tạo mới thất bại");
								request.getRequestDispatcher("lottery.jsp").forward(request, response);
							}
						}	
					}
					
					for(String resultTurn : list.getFifthPrize()) {
						prizeId = lotteryDao.getPrizeId("GIẢI NĂM", typeName);
						for(int j = 1 ; j<=6; j++) {
							result = new Result(j, typeName, "GIẢI NĂM", province, resultTurn, issue, poId, prizeId);
							checkSuccess = lotteryDao.addResult(result);
							if (checkSuccess < 0){
								request.setAttribute("check", "y");
								request.setAttribute("alert", "tạo mới thất bại");
								request.getRequestDispatcher("lottery.jsp").forward(request, response);
							}
						}	
					}
					
					for(String resultTurn : list.getSixthPrize()) {
						prizeId = lotteryDao.getPrizeId("GIẢI SÁU", typeName);
						for(int j = 1 ; j<=3; j++) {
							result = new Result(j, typeName, "GIẢI SÁU", province, resultTurn, issue, poId, prizeId);
							checkSuccess = lotteryDao.addResult(result);
							if (checkSuccess < 0){
								request.setAttribute("check", "y");
								request.setAttribute("alert", "tạo mới thất bại");
								request.getRequestDispatcher("lottery.jsp").forward(request, response);
							}
						}	
					}
					
					for(String resultTurn : list.getSeventhPrize()) {
						prizeId = lotteryDao.getPrizeId("GIẢI BẢY", typeName);
						for(int j = 1 ; j<=4; j++) {
							result = new Result(j, typeName, "GIẢI BẢY", province, resultTurn, issue, poId, prizeId);
							checkSuccess = lotteryDao.addResult(result);
							if (checkSuccess < 0){
								request.setAttribute("check", "y");
								request.setAttribute("alert", "tạo mới thất bại");
								request.getRequestDispatcher("lottery.jsp").forward(request, response);
							}
						}	
					}
					
					
					request.setAttribute("check", "y");
					request.setAttribute("alert", "tạo mới thành công");
					request.getRequestDispatcher("lottery.jsp").forward(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			else {
				String typeName = request.getParameter("typename");
				String province = request.getParameter("province");
				float price = Float.parseFloat(request.getParameter("price"));
				int number = Integer.parseInt(request.getParameter("number"));
				int spin = Integer.parseInt(request.getParameter("spin"));
				Date issue = Date.valueOf(request.getParameter("issue"));
				Date complete = Date.valueOf(request.getParameter("complete")) ;
				Date dateOpening = Date.valueOf(request.getParameter("date")) ;
				Time time = Time.valueOf(request.getParameter("time"));
				LotteryType lotteryType = new LotteryType(typeName, province, price, number, spin, issue, complete);
				PrizeOpening prizeOpening = new PrizeOpening(dateOpening, time, typeName, province, price, issue);
				try {

					int checkSuccessLottery = lotteryDao.addLotteryType(lotteryType);
					int checkSuccessPrizeOpening = lotteryDao.addPrizeOpening(prizeOpening);
					if (checkSuccessLottery > 0 && checkSuccessPrizeOpening>0) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "tạo mới thành công");
						RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
						rd.forward(request, response);
					} else {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "tạo mới thất bại");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					}
				} catch (Exception e) {
					request.setAttribute("check", "y");
					request.setAttribute("alert", "tạo mới thất bại");
					request.getRequestDispatcher("lottery.jsp").forward(request, response);
				}

			}

		} catch (Exception ex) {
			response.getWriter().println(ex);
		}
	}
}
