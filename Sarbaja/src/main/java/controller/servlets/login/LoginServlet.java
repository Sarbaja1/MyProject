package controller.servlets.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.dbconnection.DbConnection;
import model.PasswordEncryptWithAes;
import model.User;
import resources.Constants;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("uname");
		String pwd = request.getParameter("password");
		
		DbConnection connection = new DbConnection();
		
		Boolean isUserRegistered = connection.isUserRegistered(Constants.CHECK_LOGIN_INFO, user, pwd);
		int isAdmin = connection.isAdmin(user);
		if(isUserRegistered != null && isUserRegistered == true && isAdmin == 0){
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			//setting session to expiry in 30 mins
			session.setMaxInactiveInterval(10*60);

			Cookie userName = new Cookie("user", user);
			userName.setMaxAge(10*60);
			response.addCookie(userName);
			response.sendRedirect(request.getContextPath()+"/loggedindex.jsp");
			
		}else if(isUserRegistered != null && isUserRegistered == true && isAdmin == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			//setting session to expiry in 30 mins
			session.setMaxInactiveInterval(10*60);

			Cookie userName = new Cookie("user", user);
			userName.setMaxAge(10*60);
			response.addCookie(userName);
			response.sendRedirect(request.getContextPath()+"/admin.jsp");
		}
		else{
			// set error message
		    request.setAttribute("errorMessage", "Invalid username or password");
		    // forward request to login page
		    RequestDispatcher dispatcher = request.getRequestDispatcher("mainform.jsp");
		    dispatcher.include(request, response);
		}
	}
}