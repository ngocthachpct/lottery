package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.naming.directory.SearchControls;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListUserDao;
import model.User;


/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		try {
			String searchKey = request.getParameter("search");
			
				ListUserDao dao = new ListUserDao();
				List<User> list = new ArrayList<User>();
				list = dao.searchUser(searchKey);
				if (!list.isEmpty()) {
					int page, numberPage = 6;
					int size = list.size();
					int num = (size % 6 == 0 ? (size / 6) : ((size / 6)) + 1);
					String index = request.getParameter("index");
					if (index == null) {
						page = 1;
					} else {
						page = Integer.parseInt(index);
					}
					int start, end;
					start = (page - 1) * numberPage;
					end = Math.min(page * numberPage, size);
					List<User> list1 = dao.getUserPage(list, start, end);
					request.setAttribute("user", list1);
					request.setAttribute("num", num);
					request.setAttribute("save", searchKey);
				}else {
					request.setAttribute("mess", "Không tìm thấy người dùng");
					request.setAttribute("alert", "warning");
					request.getRequestDispatcher("user-manager.jsp").forward(request, response);
				}
				request.setAttribute("action1", "search");
				request.getRequestDispatcher("user-manager.jsp").forward(request, response);
				;
			
		} catch (Exception e) {
			Logger.getLogger(SearchControls.class.getName()).log(Level.SEVERE, null, e);
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
