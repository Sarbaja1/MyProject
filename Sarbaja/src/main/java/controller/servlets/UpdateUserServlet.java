package controller.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(asyncSupported = true, urlPatterns = { "/UpdateUserServlet" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
	maxFileSize = 1024 * 1024 * 10, // 10MB
	maxRequestSize = 1024 * 1024 * 50)
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String newUsername = request.getParameter("us_name");
	    String newPassword = request.getParameter("pswd");
	    
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user")) {
					String username = cookie.getValue();
					try {
						Class.forName("com.mysql.jdbc.Driver");
						String url = "jdbc:mysql://localhost:3306/coursework_db";
						String usr = "root";
						String pass = "";
						Connection con = DriverManager.getConnection(url, usr, pass);
						PreparedStatement stmt = con.prepareStatement("UPDATE users SET username=?, password=? WHERE username=?");
						if (newUsername != null) {
							stmt.setString(1, newUsername);
						} 
						else {
							response.setContentType("text/html");
				            PrintWriter out = response.getWriter();
				            out.println("<script type=\"text/javascript\">");
				            out.println("alert('Username cannot be empty');");
				            out.println("location='updateprofile.jsp';");
				            out.println("</script>");
				            RequestDispatcher dispatcher = request.getRequestDispatcher("updateprofile.jsp");
					        dispatcher.include(request, response);
					    }
						stmt.setString(2, newPassword);
						stmt.setString(3, username);
						int rowsUpdated = stmt.executeUpdate();

						if (rowsUpdated > 0) {
							// Username and password updated successfully
				        	response.setContentType("text/html");
				        	PrintWriter out = response.getWriter();
				            out.println("<script type=\"text/javascript\">");
				            out.println("alert('Username and password changed! Re-Login to the website!');");
				            out.println("location='mainform.jsp';");
				            out.println("</script>");
				            RequestDispatcher dispatcher = request.getRequestDispatcher("/mainform.jsp");
				            dispatcher.include(request, response);
						} 
						else {
							// Username and password not updated
				        	RequestDispatcher dispatcher = request.getRequestDispatcher("/updateprofile.jsp");
				        	dispatcher.include(request, response);
						}
					}
					catch (Exception e) {
						// Handle database errors
						e.printStackTrace();
					}
				}
			}
		}

	}

}
