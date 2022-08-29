package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListUserDao;
import model.User;

/**
 * Servlet implementation class InforUserServlet
 */
public class InforUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InforUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		User user = SessionUtils.getLoginedUsername(request);
		if (user == null) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else {
				request.setAttribute("usr", user);
				request.getRequestDispatcher("pages-profile.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			User oldUser = SessionUtils.getLoginedUsername(request);
			if (oldUser == null) {
				request.getRequestDispatcher("login.jsp").forward(request, response);;
			}else {
				String name = request.getParameter("name");
				String mail = request.getParameter("mail");
				String phone = request.getParameter("phone");
				String address = request.getParameter("address");
				String pwd = request.getParameter("pwd");
				String pwdConfirm = request.getParameter("pwdConfirm");
				MessageDigest md = MessageDigest.getInstance("MD5");
				byte[] messageDigest = md.digest(pwd.getBytes()); 
				BigInteger no = new BigInteger(1, messageDigest); 
				  
	            // Convert message digest into hex value 
	            String pass = no.toString(16); 
	            while (pass.length() < 32) { 
	                pass = "0" + pass; 
	            } 
				if (!pass.equals(oldUser.getPwd())) {
					request.setAttribute("usr", oldUser);
					request.setAttribute("err", "2");
					request.getRequestDispatcher("pages-profile.jsp").forward(request, response);
				}else if (!pwd.endsWith(pwdConfirm)) {
					request.setAttribute("usr", oldUser);
					request.setAttribute("err", "1");
					request.getRequestDispatcher("pages-profile.jsp").forward(request, response);
				} else if (phone.length()>10 || phone.length()<9) {
					request.setAttribute("usr", oldUser);
					request.setAttribute("err", "4");
					request.getRequestDispatcher("pages-profile.jsp").forward(request, response);
				}else {
					User user = new User(oldUser.getGroupId(), oldUser.getGroupName(), name, oldUser.getUsr(),pass, address, mail, phone);
					ListUserDao dao = new ListUserDao();
					dao.updateUser(user, oldUser, oldUser.getGroupId());
					User newUser = dao.getUserByUsername(oldUser.getUsr());
					SessionUtils.invalidate(request);
					SessionUtils.add(request, "userSession", newUser);
					request.setAttribute("err", "3");
					request.setAttribute("usr", newUser);
					request.getRequestDispatcher("pages-profile.jsp").forward(request, response);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
