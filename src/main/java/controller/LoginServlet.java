package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import model.User;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			
			
			String usr = request.getParameter("username");
			String password = request.getParameter("password");
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] messageDigest = md.digest(password.getBytes()); 
			BigInteger no = new BigInteger(1, messageDigest); 
			  
            // Convert message digest into hex value 
            String pass = no.toString(16); 
            while (pass.length() < 32) { 
                pass = "0" + pass; 
            } 
			LoginDao dao = new LoginDao();
			User user = dao.checkLogin(usr, pass);
			
			
			if (user == null) {
				request.setAttribute("error", "Bạn đã nhập sai mật khẩu hoặc tài khoản");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			} else {
				String remember = request.getParameter("remember");
				SessionUtils.add(request, "userSession", user);
				HttpSession session = request.getSession();
				if (remember != null) {
					Cookie cookieName = new Cookie("cookUsername", usr);
					cookieName.setMaxAge(120);
					Cookie cookiePass = new Cookie("cookPassword", password);
					cookiePass.setMaxAge(120);
					Cookie cookieRemember = new Cookie("cookRemember", remember);
					cookieRemember.setMaxAge(120);
					response.addCookie(cookieName);
					response.addCookie(cookiePass);
					response.addCookie(cookieRemember);
				}
				User currUser = SessionUtils.getLoginedUsername(request);
				session.setAttribute("user", currUser.getUsr());
				response.sendRedirect("index.jsp");

			}

		} catch (Exception ex) {
			response.getWriter().println(ex);
		}
	}

}
