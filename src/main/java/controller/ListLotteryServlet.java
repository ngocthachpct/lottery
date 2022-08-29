package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.naming.directory.SearchControls;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LotteryDao;
import model.LotteryType;
import model.Prize;
import model.PrizeOpening;
import model.Result;


/**
 * Servlet implementation class ListUserServlet
 */

public class ListLotteryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListLotteryServlet() {
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

		try (PrintWriter out = response.getWriter()) {
			LotteryDao dao = new LotteryDao();
			String view = request.getParameter("view");
			List<LotteryType> listLotteryType = dao.getLotteryType(view);
			List<PrizeOpening> listPrizeOpening = dao.getPrizeOpening(view);
			List<Prize> listPrize = dao.getPrizes(view);
			List<Result> listResult = dao.getResult(view);
			String action = request.getParameter("action");
			if (action.equalsIgnoreCase("deletelist")) {
				request.setAttribute("action1", "deletelist");
			}
			
			String index = request.getParameter("index");
			String objectives = request.getParameter("objectives");
			
			int page, numberPage = 6;
			int size;
			int num = 0;
			
			if (objectives.equalsIgnoreCase("lotterytype")) {
				size = listLotteryType.size();
				num = (size % 6 == 0 ? (size / 6) : ((size / 6)) + 1);
				if (index == null) {
					page = 1;
					index = "1";
				} else {
					page = Integer.parseInt(index);
				}
				int start, end;
				start = (page - 1) * numberPage;
				end = Math.min(page * numberPage, size);
				List<LotteryType> listPage = dao.getListPage(listLotteryType, start, end);
				request.setAttribute("objectives", "lotterytype");
				request.setAttribute("target", listPage);
				request.setAttribute("num", num);
				request.setAttribute("tag", index);
			} else if (objectives.equalsIgnoreCase("prizeopening")) {
				size = listPrizeOpening.size();
				num = (size % 6 == 0 ? (size / 6) : ((size / 6)) + 1);
				if (index == null) {
					page = 1;
					index = "1";
				} else {
					page = Integer.parseInt(index);
				}
				int start, end;
				start = (page - 1) * numberPage;
				end = Math.min(page * numberPage, size);
				List<PrizeOpening> listPage = dao.getListPage(listPrizeOpening, start, end);
				request.setAttribute("objectives", "prizeopening");
				request.setAttribute("target", listPage);
				request.setAttribute("num", num);
				request.setAttribute("tag", index);
			} else if (objectives.equalsIgnoreCase("prize")) {
				size = listPrize.size();
				num = (size % 6 == 0 ? (size / 6) : ((size / 6)) + 1);
				if (index == null) {
					page = 1;
					index = "1";
				} else {
					page = Integer.parseInt(index);
				}
				int start, end;
				start = (page - 1) * numberPage;
				end = Math.min(page * numberPage, size);
				List<Prize> listPage = dao.getListPage(listPrize, start, end);
				request.setAttribute("objectives", "prize");
				request.setAttribute("target", listPage);
				request.setAttribute("num", num);
				request.setAttribute("tag", index);
			} else {
				size = listResult.size();
				num = (size % 6 == 0 ? (size / 6) : ((size / 6)) + 1);
				if (index == null) {
					page = 1;
					index = "1";
				} else {
					page = Integer.parseInt(index);
				}
				int start, end;
				start = (page - 1) * numberPage;
				end = Math.min(page * numberPage, size);
				List<Result> listPage = dao.getListPage(listResult, start, end);
				request.setAttribute("objectives", "result");
				request.setAttribute("target", listPage);
				request.setAttribute("num", num);
				request.setAttribute("tag", index);
			}
			request.setAttribute("view", view);
			RequestDispatcher rd = request.getRequestDispatcher("lottery.jsp");
			rd.forward(request, response);
		} catch (Exception ex) {
			java.util.logging.Logger.getLogger(SearchControls.class.getName()).log(java.util.logging.Level.SEVERE, null,
					ex);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

}
