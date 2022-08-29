package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HitoryCheckDao;
import dao.ListUserDao;
import dao.LotteryDao;
import dao.RegisterDao;
import model.Email;
import model.LotteryType;
import model.Prize;
import model.PrizeOpening;
import model.Result;
import model.User;

/**
 * Servlet implementation class EditServlet
 */
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		try {

			String objectives = request.getParameter("objectives");
			String action = request.getParameter("action");

			LotteryDao dao = new LotteryDao();
			ListUserDao userDao = new ListUserDao();
			request.setAttribute("objectives", objectives);
			request.setAttribute("action", action);
			if (action.equalsIgnoreCase("update")) {

				String role = request.getParameter("role");
				int id = Integer.parseInt(request.getParameter("id"));
				if (objectives.equalsIgnoreCase("lotterytype")) {
					LotteryType old = dao.getLotteryTypeById(id);
					request.setAttribute("old", old);
				} else if (objectives.equalsIgnoreCase("prizeopening")) {
					PrizeOpening old = dao.getPrizeOpeningById(id);
					request.setAttribute("old", old);

				} else if (objectives.equalsIgnoreCase("prize")) {
					Prize old = dao.getPrizeById(id);
					request.setAttribute("old", old);
				} else if (objectives.equalsIgnoreCase("result")) {
					Result old = dao.getResultById(id);
					request.setAttribute("old", old);
				} else {
					User old = userDao.getUser(id, role);
					request.setAttribute("old", old);
				}
				RequestDispatcher rd = request.getRequestDispatcher("action.jsp");
				rd.forward(request, response);
			} else if (action.equalsIgnoreCase("delete")) {
				String role = request.getParameter("role");
				int id = Integer.parseInt(request.getParameter("id"));
				if (objectives.equalsIgnoreCase("user")) {
					if (role.equalsIgnoreCase("QL")) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "không thể xóa quản lý");
						request.getRequestDispatcher("user-manager.jsp").forward(request, response);
					} else {
						try {
						User user = userDao.getUser(id, role);
						int check = userDao.deleteUser(id, role);
						
						if (check > 0) {
							Email email = new Email();
							email.setFrom("ngocthachpct@gmail.com");
							email.setFromPassword("dntviuexjwpjyhtf");
							email.setTo(user.getMail());
							email.setSubbject("Delete Account");
							StringBuilder sb = new StringBuilder();
							sb.append("Dear ").append(user.getName()).append("<br>");
							sb.append("Your account has been deleted for being inactive for too long. <br>");
							sb.append("Regard<br>");
							sb.append("Adminstrator");
							email.setContennt(sb.toString());
							EmailUtility.send(email);
							request.setAttribute("check", "y");
							request.setAttribute("alert", "xóa thành công");
						} else {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "xóa thất bại");
						}
						} catch (Exception e) {
							e.printStackTrace();
						}
						request.getRequestDispatcher("user-manager.jsp").forward(request, response);
					}

				} else {

					int check = dao.deleteLottery(objectives, id);
					try {
						if (check > 0) {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "xóa thành công");
						} else {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "xóa thất bại");
						}
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					} catch (Exception e) {
						e.printStackTrace();	
					}
					
				}
			} else if (action.equalsIgnoreCase("deletelist")) {
				request.setAttribute("action1", "deletelist");
				String index = request.getParameter("index");
				String view = request.getParameter("view");
				if (objectives.equals("user")) {
					String role = request.getParameter("role");
					request.getRequestDispatcher("listUser?index=" + index + "&role=" + role+"&view="+view).forward(request,
							response);
				}  else {
					request.getRequestDispatcher("listLottery?index=" + index + "&objectives=" + objectives+"&view="+view)
							.forward(request, response);
				}

			}

			else {
				RequestDispatcher rd = request.getRequestDispatcher("action.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		User currUser = SessionUtils.getLoginedUsername(request);
		if (currUser == null) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}

		try {

			String action = request.getParameter("action");
			LotteryDao dao = new LotteryDao();
			ListUserDao userDao = new ListUserDao();
			
			String objectives = request.getParameter("objectives");
			if (action.equalsIgnoreCase("deletelist")) {
				if (objectives.equalsIgnoreCase("user")) {
					try {
						for (String name : request.getParameterValues("userNames")) {
							if ((userDao.getUserByUsername(name).getGroupName()).equalsIgnoreCase("quanly")) {
								request.setAttribute("check", "y");
								request.setAttribute("alert", "không thể xóa quản lý");
								request.getRequestDispatcher("user-manager.jsp").forward(request, response);

							} else {
								userDao.deleteListUser(userDao.getUserByUsername(name).getId());
							}
						}
						request.setAttribute("check", "y");	
						request.setAttribute("alert", "xóa thành công");
						request.getRequestDispatcher("user-manager.jsp").forward(request, response);
					} catch (Exception e) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "bạn chưa chọn xóa bất kì mục nào");
						request.getRequestDispatcher("user-manager.jsp").forward(request, response);
					}
				}else if(objectives.equalsIgnoreCase("lotterytype")){
					try {
						for (String id : request.getParameterValues("userNames")) {
							
							int check = dao.deleteLottery("lotterytype", Integer.parseInt(id));
							if (check<0) {
								request.setAttribute("check", "y");
								request.setAttribute("alert", "xóa thất bại");
								request.getRequestDispatcher("lottery.jsp").forward(request, response);
								
							}
							request.setAttribute("check", "y");
							request.setAttribute("alert", "xóa thành công");
							request.getRequestDispatcher("lottery.jsp").forward(request, response);
						}
					} catch (Exception e) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "xóa thất bại");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					}
				}
				else if (objectives.equalsIgnoreCase("prizeopening")) {
					try {
						for (String id : request.getParameterValues("userNames")) {
							int check = dao.deleteLottery("prizeopening", Integer.parseInt(id));
							if (check<0) {
								request.setAttribute("check", "y");
								request.setAttribute("alert", "xóa thất bại");
								request.getRequestDispatcher("lottery.jsp").forward(request, response);
								
							}
						}
						request.setAttribute("check", "y");
						request.setAttribute("alert", "xóa thành công");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					} catch (Exception e) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "xóa thất bại");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					}
				}else if (objectives.equalsIgnoreCase("prize")) {
					try {
						for (String id : request.getParameterValues("userNames")) {
							
							int check = dao.deleteLottery("prize", Integer.parseInt(id));
							if (check>0) {
								request.setAttribute("check", "y");
								request.setAttribute("alert", "xóa thất bại");
								request.getRequestDispatcher("lottery.jsp").forward(request, response);
							}
						}
						request.setAttribute("check", "y");
						request.setAttribute("alert", "xóa thành công");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					} catch (Exception e) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "xóa thất bại");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					}
				}else {
					try {
						for (String id : request.getParameterValues("userNames")) {
							
							int check = dao.deleteLottery("result", Integer.parseInt(id));
							if (check<0) {
								request.setAttribute("check", "y");
								request.setAttribute("alert", "xóa thất bại");
								request.getRequestDispatcher("lottery.jsp").forward(request, response);
							}
						}
						request.setAttribute("check", "y");
						request.setAttribute("alert", "xóa thành công");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					} catch (Exception e) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "xóa thất bại");
						request.getRequestDispatcher("lottery.jsp").forward(request, response);
					}
				}

			} else if (action.equalsIgnoreCase("update")) {
				int id = Integer.parseInt(request.getParameter("id"));

				if (objectives.equalsIgnoreCase("lotterytype")) {
					try {
						LotteryType oldlotteryType = dao.getLotteryTypeById(id);

						String typeName = request.getParameter("typename");
						String province = request.getParameter("province");
						float price = Float.parseFloat(request.getParameter("price"));
						int number = Integer.parseInt(request.getParameter("number"));
						int spin = Integer.parseInt(request.getParameter("spin"));
						Date issue = Date.valueOf(request.getParameter("issue"));
						Date complete = Date.valueOf(request.getParameter("complete"));

						LotteryType lotteryType = new LotteryType(typeName, province, price, number, spin, issue,
								complete);

						int checkSuccess = dao.updateLotteryType(lotteryType, oldlotteryType);

						if (checkSuccess > 0) {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thành công");
							RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
							rd.forward(request, response);

						} else {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thất bại");
							RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
							rd.forward(request, response);

						}
					} catch (Exception e) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "cập nhật thất bại");
						RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
						rd.forward(request, response);
					}

				} else if (objectives.equalsIgnoreCase("prizeopening")) {
					try {
						PrizeOpening oldprizeOpening = dao.getPrizeOpeningById(id);

						Date date = Date.valueOf(request.getParameter("date"));
						Time time = Time.valueOf(request.getParameter("time"));
						String typeName = request.getParameter("typename");
						String province = request.getParameter("province");
						float price = Float.parseFloat(request.getParameter("price"));
						Date issue = Date.valueOf(request.getParameter("issue"));
						PrizeOpening newPrizeOpening = new PrizeOpening(date, time, typeName, province, price, issue);
						int checkSuccess = dao.updatePrizeOpening(newPrizeOpening, oldprizeOpening);

						if (checkSuccess > 0) {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thành công");
							RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
							rd.forward(request, response);
						} else {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thất bại");
							RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
							rd.forward(request, response);

						}
					} catch (Exception e) {
						request.setAttribute("check", "y");
						request.setAttribute("alert", "cập nhật thất bại");
						RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
						rd.forward(request, response);
					}

				} else if (objectives.equalsIgnoreCase("prize")) {
					try {
						Prize oldPrize = dao.getPrizeById(id);

						String prizeName = request.getParameter("prizeName");
						String typeName = request.getParameter("typename");
						float price = Float.parseFloat(request.getParameter("price"));
						Date issue = Date.valueOf(request.getParameter("issue"));
						float value = Float.parseFloat(request.getParameter("value"));
						int number = Integer.parseInt(request.getParameter("number"));
						int spin = Integer.parseInt(request.getParameter("spin"));

						Prize newPrize = new Prize(id, prizeName, typeName, price, value, number, spin, issue);

						int checkSuccess = dao.updatePrize(newPrize, oldPrize, id);
						if (checkSuccess > 0) {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thành công");
							RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
							rd.forward(request, response);
						} else {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thất bại");
							RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
							rd.forward(request, response);

						}
					} catch (Exception e) {
						e.printStackTrace();
					}

				} else if (objectives.equalsIgnoreCase("result")) {
					try {
						Result oldResult = dao.getResultById(id);
						int turn = Integer.parseInt(request.getParameter("turn"));
						String prizeName = request.getParameter("prizeName");
						String province = request.getParameter("province");
						String typename = request.getParameter("typename");
						String result = request.getParameter("result");
						Date issue = Date.valueOf(request.getParameter("issue"));
						int prizeId = dao.getPrizeId(prizeName, typename);
						int poId = dao.getPOId(issue, province);
						Result newResult = new Result(id, prizeId, prizeName, typename, turn, poId, result, issue);

						int checkSuccess = dao.updateResult(newResult, oldResult);

						if (checkSuccess > 0) {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thành công");
							RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
							rd.forward(request, response);
						} else {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thất bại");
							RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
							rd.forward(request, response);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}

				} else {
					String role = request.getParameter("role");
					String groupId = request.getParameter("groupId");
					String groupName = request.getParameter("groupName");
					String name = request.getParameter("name");
					String usr = request.getParameter("usr");
					String pwd = request.getParameter("pwd");
					String address = request.getParameter("address");
					String mail = request.getParameter("mail");
					String phone = request.getParameter("phone");
					User oldUser = userDao.getUser(id, role);
					try {

						User user = new User(groupId, groupName, name, usr, pwd, address, mail, phone);
						if (!user.getGroupId().equalsIgnoreCase(oldUser.getGroupId()) && !user.getGroupName().equalsIgnoreCase(oldUser.getGroupName())) {
							
							
							RegisterDao registerDao = new RegisterDao();
							registerDao.addAccount(user);
							user = userDao.getUserByMailUsername(usr, mail);
							HitoryCheckDao hitoryCheckDao = new HitoryCheckDao();
							hitoryCheckDao.updateHistory(user, oldUser);
							userDao.deleteUser(id, role);
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thành công");
							request.getRequestDispatcher("user-manager.jsp").forward(request, response);
						}
						int checkSuccess = userDao.updateUser(user, oldUser, groupId);
						if (checkSuccess > 0) {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thành công");
							request.getRequestDispatcher("user-manager.jsp").forward(request, response);
						} else {
							request.setAttribute("check", "y");
							request.setAttribute("alert", "cập nhật thất bại");
							request.getRequestDispatcher("user-manager.jsp").forward(request, response);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
