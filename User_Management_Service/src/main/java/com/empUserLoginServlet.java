package com;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.SQLException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class empUserLoginServlet
 */
@WebServlet("/empLogin")
public class empUserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public empUserLoginServlet() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String empemail = request.getParameter("empemail");
        String emppassword = request.getParameter("emppassword");
         
        empUserDAO userDao = new empUserDAO();
         
        try {
        	empUserModel user = userDao.checkLogin(empemail, emppassword);
            String destPage = "EmployeeLogin.jsp";
             
            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                destPage = "EmployeeWelcome.jsp";
            } else {
                String message = "Invalid email/password";
                request.setAttribute("message", message);
            }
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
	}

}