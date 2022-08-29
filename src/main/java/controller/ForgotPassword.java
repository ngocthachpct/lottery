package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListUserDao;
import model.Email;
import model.User;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			String mailAdress = request.getParameter("email");
			String usr = request.getParameter("usr");
			
			ListUserDao dao = new ListUserDao();
			User user = dao.getUserByMailUsername(usr, mailAdress);
			if (user == null) {
				request.setAttribute("error", "Mật khẩu hoặc tài khoản không chính xác");
				RequestDispatcher rd = request.getRequestDispatcher("forgot-password.jsp");
				rd.forward(request, response);
				
			}else {
				
				int leftLimit = 48; // numeral '0'
			    int rightLimit = 122; // letter 'z'
			    int targetStringLength = 10;
			    Random random = new Random();

			    String generatedString = random.ints(leftLimit, rightLimit + 1)
			      .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
			      .limit(targetStringLength)
			      .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
			      .toString();
				MessageDigest md = MessageDigest.getInstance("MD5");
				byte[] messageDigest = md.digest(generatedString.getBytes()); 
				BigInteger no = new BigInteger(1, messageDigest); 
				  
	            // Convert message digest into hex value 
	            String pass = no.toString(16); 
	            while (pass.length() < 32) { 
	                pass = "0" + pass; 
	            } 
	            
				dao.updatePassword(usr, pass, user.getGroupId(), mailAdress);
				Email email = new Email();
				email.setFrom("ngocthachpct@gmail.com");
				email.setFromPassword("dntviuexjwpjyhtf");
				email.setTo(mailAdress);
				email.setSubbject("Forgot password function");
				StringBuilder sb = new StringBuilder();
				sb.append("Dear ").append(usr).append("<br>");
				sb.append("You are used the forgot password function. <br>");
				sb.append("Your password is <br>").append(generatedString).append("<br>");
				sb.append("Regard<br>");
				sb.append("Adminstrator");
				
				email.setContennt(sb.toString());
				EmailUtility.send(email);
				
				request.setAttribute("error", "Email đã được gửi tới email của bạn. Vui lòng kiểm tra email để lậy lại mật khẩu");
				RequestDispatcher rd = request.getRequestDispatcher("forgot-password.jsp");
				rd.forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		
	}

}
