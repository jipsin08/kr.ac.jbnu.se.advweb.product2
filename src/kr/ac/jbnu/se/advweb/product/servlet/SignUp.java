package kr.ac.jbnu.se.advweb.product.servlet;

import java.awt.Window;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.jbnu.se.advweb.product.model.Product;
import kr.ac.jbnu.se.advweb.product.model.UserAccount;
import kr.ac.jbnu.se.advweb.product.utils.DBUtils;
import kr.ac.jbnu.se.advweb.product.utils.MyUtils;

/**
 * Servlet implementation class SignUP
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }
   /* 
    public boolean checkID(HttpServletRequest request){
    	Connection conn = MyUtils.getStoredConnection(request);
    	String userName = (String) request.getParameter("userName");
    	String errorString = null;
    	boolean check =false;
    	if (errorString == null) {
			try {
				check = DBUtils.findID(conn, userName);
			} catch (SQLException e) {
				e.printStackTrace();
				errorString = e.getMessage();
			}
		}
    	return check;
    	
    }
    */
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher  = this.getServletContext().getRequestDispatcher("/WEB-INF/views/SignUp.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn = MyUtils.getStoredConnection(request);
		
		String userName = (String) request.getParameter("userName");
		String password = (String) request.getParameter("password");
		String name = (String) request.getParameter("name");
		String department = (String) request.getParameter("department");
		String answer = (String) request.getParameter("answer");
		String address = (String) request.getParameter("address");
		String phone = (String) request.getParameter("phone");
		
		
		UserAccount userAccount = new UserAccount(userName, password, name, department, answer, address, phone);
		

		String errorString = null;

		// Product ID is the string literal [a-zA-Z_0-9]
		// with at least 1 character
		
		

		if (errorString == null) {
			try {
				DBUtils.insertUser(conn, userAccount);
			} catch (SQLException e) {
				e.printStackTrace();
				errorString = e.getMessage();
			}
		}
		
		// Store infomation to request attribute, before forward to views.
				request.setAttribute("errorString", errorString);
		
		
				if (errorString != null) {
					RequestDispatcher dispatcher = request.getServletContext()
							.getRequestDispatcher("/WEB-INF/views/loginView.jsp");
					dispatcher.forward(request, response);
				}
				// If everything nice.
				// Redirect to the product listing page.
				else {
					response.sendRedirect(request.getContextPath() + "/login");
				}
		
		
	}

}
