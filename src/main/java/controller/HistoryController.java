package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HitoryCheckDao;
import model.HistoryCheck;
import model.User;

/**
 * Servlet implementation class HistoryController
 */
public class HistoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HistoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try (PrintWriter out = response.getWriter()) {
			HitoryCheckDao dao = new HitoryCheckDao();
			User user = SessionUtils.getLoginedUsername(request);
			if (user == null) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			List<HistoryCheck> list = dao.getHistoryChecks(user.getGroupId(), user.getGroupName(), user.getId());
			int page, numberPage = 6;
			int size = list.size();
			int num =(size%6 == 0?(size/6):((size/6))+1);
			String index = request.getParameter("index");
			if (index == null) {
				page =1;
			}else {
				page = Integer.parseInt(index);
			}
			int start, end;
			start=(page-1)*numberPage;
			end = Math.min(page*numberPage, size);
			List<HistoryCheck> list1 = dao.getHistoryPage(list, start, end);
			request.setAttribute("history", list1);
			request.setAttribute("num", num);
			RequestDispatcher rd = request.getRequestDispatcher("lichsudo.jsp");
			rd.forward(request, response);
		} catch (Exception ex) {
			java.util.logging.Logger.getLogger(HistoryController.class.getName()).log(java.util.logging.Level.SEVERE,
					null, ex);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
