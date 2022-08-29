package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.User;

public class SessionUtils {
	public static void add(HttpServletRequest request, String name, User value) {
		HttpSession session = request.getSession();
		session.setAttribute(name, value);
	}
	public static User get(HttpServletRequest request, String name) {
		HttpSession session = request.getSession();
		return (User) session.getAttribute(name);
	}
	public static void invalidate(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
	}
	public static boolean isLogin(HttpServletRequest request) {
		return get(request, "userSession") != null;
	}
	
	public static User getLoginedUsername(HttpServletRequest request) {
		User user = get(request, "userSession");
		return user == null? null: user;
	}

}
