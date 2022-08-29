package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

@WebServlet("/AcountServlet")
public class AcountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcountServlet() {
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
		
		try (PrintWriter out = response.getWriter()) {
			String username = request.getParameter("username");
			HttpSession session = request.getSession(true);
			User user = SessionUtils.getLoginedUsername(request);
			
			if (user == null) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			
			if (user.getGroupId().equalsIgnoreCase("QL")) {
				session.setAttribute("name", username);
				
				RequestDispatcher rd = request.getRequestDispatcher("admin-index.jsp");
				rd.forward(request, response);
			} else {
				session.setAttribute("name", username);
				request.setAttribute("usr", user);
				RequestDispatcher rd = request.getRequestDispatcher("pages-profile.jsp");
				rd.forward(request, response);
			}
			
			
		} catch (Exception ex) {
			
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

