package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RegisterDao;
import model.User;

/**
 * Servlet implementation class RegisterServlet
 */

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		try {
			RegisterDao registerDao = new RegisterDao();

			String usr = request.getParameter("usr");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String mail = request.getParameter("mail");
			String address = request.getParameter("address");
			String phone = request.getParameter("phone");
			String repass = request.getParameter("repass");
			
			
			if (registerDao.checkUserName(usr)) {
				request.setAttribute("warning", "Tên đăng nhập đã tồn tại");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			} else if (!pwd.equals(repass)) {
				request.setAttribute("warning", "Mật khẩu xác nhận không chính xác!");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}else if (phone.length() > 10 || phone.length() <9 ) {
				request.setAttribute("warning", "Số điện thoại không hợp lệ");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}else if (registerDao.checkUserMail(mail)) {
				request.setAttribute("warning", "Email đã tồn tại");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			} else {
				MessageDigest md = MessageDigest.getInstance("MD5");
				byte[] messageDigest = md.digest(pwd.getBytes()); 
				BigInteger no = new BigInteger(1, messageDigest); 
				  
	            // Convert message digest into hex value 
	            String pass = no.toString(16); 
	            while (pass.length() < 32) { 
	                pass = "0" + pass; 
	            } 
	            User user = new User("ND", "NGUOIDUNG", name, usr, pass, address, mail, phone);
				registerDao.addAccount(user);
				request.setAttribute("err", "y");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}

		} catch (Exception ex) {
			response.getWriter().println(ex);
		}
	}

}
