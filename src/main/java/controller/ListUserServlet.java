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

import dao.ListUserDao;
import model.User;

/**
 * Servlet implementation class ListUserServlet
 */
public class ListUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListUserServlet() {
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
			ListUserDao dao = new ListUserDao();
			String view = request.getParameter("view");
			List<User> listAll = dao.getAllUser(view);
			List<User> listAdmin = dao.getAdmin(view);
			List<User> listGuest = dao.getGuest(view);
			List<User> listPage;
			String index = request.getParameter("index");
			String role = request.getParameter("role");
			
			int page, numberPage = 6;
			int size;
			int num = 0;
			
			if (role.equalsIgnoreCase("all")) {
				size = listAll.size();
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
				listPage = dao.getUserPage(listAll, start, end);
				request.setAttribute("role", "all");
				request.setAttribute("user", listPage);
				request.setAttribute("num", num);
				request.setAttribute("tag", index);
				
			} else if (role.equalsIgnoreCase("QL")) {
				size = listAdmin.size();
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
				listPage = dao.getUserPage(listAdmin, start, end);
				request.setAttribute("role", "QL");
				request.setAttribute("user", listPage);
				request.setAttribute("num", num);
				request.setAttribute("tag", index);
			} else {
				size = listGuest.size();
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
				listPage = dao.getUserPage(listGuest, start, end);
				request.setAttribute("role", "NK");
				request.setAttribute("user", listPage);
				request.setAttribute("num", num);
				request.setAttribute("tag", index);
			}
			request.setAttribute("view", view);
			RequestDispatcher rd = request.getRequestDispatcher("user-manager.jsp");
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

	}

}
