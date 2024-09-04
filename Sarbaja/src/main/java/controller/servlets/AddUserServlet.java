package controller.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PasswordEncryptWithAes;

@WebServlet(asyncSupported = true, urlPatterns = { "/AddUserServlet" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
	maxFileSize = 1024 * 1024 * 10, // 10MB
	maxRequestSize = 1024 * 1024 * 50)
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String FName = request.getParameter("fname");
		String LName = request.getParameter("lname");
		String UName = request.getParameter("uname");
		String Email = request.getParameter("email");
		String Pass = request.getParameter("password");
		String role = "0";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/coursework_db";
			String usr = "root";
			String pass = "";
			Connection con = DriverManager.getConnection(url, usr, pass);
			
			String query = "Insert into users(first_name, last_name, username, email, password, is_Admin) values (?, ?, ?, ?, ?, ?)";
    		PreparedStatement ps = con.prepareStatement(query);
    		ps.setString(1, FName);
    		ps.setString(2, LName);
    		ps.setString(3, UName);
    		ps.setString(4, Email);
    		ps.setString(5, PasswordEncryptWithAes.encrypt(UName, Pass));
    		ps.setString(6, role);

    		int result = ps.executeUpdate();
			if(result > 0) {
				RequestDispatcher includeDispatcher = request.getRequestDispatcher("/userform.jsp");
				includeDispatcher.include(request,  response);
			}else {
				RequestDispatcher forwardDispatcher = request.getRequestDispatcher("/userform.jsp");
				forwardDispatcher.forward(request,  response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
