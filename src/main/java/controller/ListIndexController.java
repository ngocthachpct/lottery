package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListIndexDao;
import model.ListIndex;


/**
 * Servlet implementation class ListIndexController
 */

public class ListIndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListIndexController() {
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
			ListIndexDao dao = new ListIndexDao();
			String province1 = "HỒ CHÍ MINH";
			String province2 = "ĐỒNG THÁP";
			String province3 =  "VŨNG TÀU";
			String province4 = "HÀ NỘI";
			String province5 = "ĐẮC LẮC";
			String province6 = "QUẢNG NAM";
			Date date = Date.valueOf("2022-05-03");
			
			
			List<String> specialPrize = dao.getSpecialPrize(province1, date);
			List<String> firstPrize = dao.getFirstPrize(province1, date);
			List<String> secondPrize = dao.getSecondPrize(province1, date);
			List<String> thirdPrize = dao.getThirdPrize(province1, date);
			List<String> fourthPrize = dao.getFourthPrize(province1, date);
			List<String> fifthPrize = dao.getFifthPrize(province1, date);
			List<String> sixthPrize = dao.getSixthPrize(province1, date);
			List<String> seventhPrize = dao.getSeventhPrize(province1, date);
			
			ListIndex list1 = new ListIndex(date, province1, specialPrize, firstPrize, secondPrize, thirdPrize, fourthPrize, fifthPrize, sixthPrize, seventhPrize);
			
			specialPrize = dao.getSpecialPrize(province2, date);
			firstPrize = dao.getFirstPrize(province2, date);
			secondPrize = dao.getSecondPrize(province2, date);
			thirdPrize = dao.getThirdPrize(province2, date);
			fourthPrize = dao.getFourthPrize(province2, date);
			fifthPrize = dao.getFifthPrize(province2, date);
			sixthPrize = dao.getSixthPrize(province2, date);
			seventhPrize = dao.getSeventhPrize(province2, date);
			
			ListIndex list2 = new ListIndex(date, province2, specialPrize, firstPrize, secondPrize, thirdPrize, fourthPrize, fifthPrize, sixthPrize, seventhPrize);
			
			specialPrize = dao.getSpecialPrize(province3, date);
			firstPrize = dao.getFirstPrize(province3, date);
			secondPrize = dao.getSecondPrize(province3, date);
			thirdPrize = dao.getThirdPrize(province3, date);
			fourthPrize = dao.getFourthPrize(province3, date);
			fifthPrize = dao.getFifthPrize(province3, date);
			sixthPrize = dao.getSixthPrize(province3, date);
			seventhPrize = dao.getSeventhPrize(province3, date);
			
			ListIndex list3 = new ListIndex(date, province3, specialPrize, firstPrize, secondPrize, thirdPrize, fourthPrize, fifthPrize, sixthPrize, seventhPrize);
			
			specialPrize = dao.getSpecialPrize(province4, date);
			firstPrize = dao.getFirstPrize(province4, date);
			secondPrize = dao.getSecondPrize(province4, date);
			thirdPrize = dao.getThirdPrize(province4, date);
			fourthPrize = dao.getFourthPrize(province4, date);
			fifthPrize = dao.getFifthPrize(province4, date);
			sixthPrize = dao.getSixthPrize(province4, date);
			seventhPrize = dao.getSeventhPrize(province4, date);
			
			ListIndex list4 = new ListIndex(date, province4, specialPrize, firstPrize, secondPrize, thirdPrize, fourthPrize, fifthPrize, sixthPrize, seventhPrize);
			
			specialPrize = dao.getSpecialPrize(province5, date);
			firstPrize = dao.getFirstPrize(province5, date);
			secondPrize = dao.getSecondPrize(province5, date);
			thirdPrize = dao.getThirdPrize(province5, date);
			fourthPrize = dao.getFourthPrize(province5, date);
			fifthPrize = dao.getFifthPrize(province5, date);
			sixthPrize = dao.getSixthPrize(province5, date);
			seventhPrize = dao.getSeventhPrize(province5, date);
			
			ListIndex list5 = new ListIndex(date, province5, specialPrize, firstPrize, secondPrize, thirdPrize, fourthPrize, fifthPrize, sixthPrize, seventhPrize);
			
			specialPrize = dao.getSpecialPrize(province6, date);
			firstPrize = dao.getFirstPrize(province6, date);
			secondPrize = dao.getSecondPrize(province6, date);
			thirdPrize = dao.getThirdPrize(province6, date);
			fourthPrize = dao.getFourthPrize(province6, date);
			fifthPrize = dao.getFifthPrize(province6, date);
			sixthPrize = dao.getSixthPrize(province6, date);
			seventhPrize = dao.getSeventhPrize(province6, date);
			
			ListIndex list6 = new ListIndex(date, province5, specialPrize, firstPrize, secondPrize, thirdPrize, fourthPrize, fifthPrize, sixthPrize, seventhPrize);
			
			request.setAttribute("list1", list1);
			request.setAttribute("list2", list2);
			request.setAttribute("list3", list3);
			request.setAttribute("list4", list4);
			request.setAttribute("list5", list5);
			request.setAttribute("list6", list6);
			
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		} catch (Exception ex) {
			ex.printStackTrace();
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
