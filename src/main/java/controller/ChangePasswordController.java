package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListUserDao;
import model.User;

public class ChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			User user = SessionUtils.getLoginedUsername(request);
			if (user == null) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else {
				String newPass = request.getParameter("newPass");
				String confirmNewPass = request.getParameter("confirmNewPass");
				String password = request.getParameter("password");
				MessageDigest md = MessageDigest.getInstance("MD5");
				byte[] messageDigest = md.digest(password.getBytes()); 
				BigInteger no = new BigInteger(1, messageDigest); 
				  
	            // Convert message digest into hex value 
	            String pass = no.toString(16); 
	            while (pass.length() < 32) { 
	                pass = "0" + pass; 
	            } 
	            
				if (!newPass.equals(confirmNewPass)) {
					request.setAttribute("err", "Mật khẩu xác nhận lại không đúng");
				}else if (!pass.equals(user.getPwd())) {
					request.setAttribute("err", "Mật khẩu cũ không đúng");
				}else {
					messageDigest = md.digest(newPass.getBytes()); 
					no = new BigInteger(1, messageDigest); 
					  
		            // Convert message digest into hex value 
		            String pass1 = no.toString(16); 
		            while (pass1.length() < 32) { 
		                pass1 = "0" + pass1; 
		            }
					User newUser = new User(user.getGroupId(), user.getGroupName(), user.getName(), user.getUsr(), pass1, user.getId(), user.getAddress(), user.getMail(), user.getPhone());
					ListUserDao dao = new ListUserDao();
					dao.updateUser(newUser, user, user.getGroupId());
					request.setAttribute("err", "Đổi mật khẩu thành công");
					
				}
				SessionUtils.invalidate(request);
				request.setAttribute("warning", "warning");
				request.getRequestDispatcher("change-password.jsp").forward(request, response);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
