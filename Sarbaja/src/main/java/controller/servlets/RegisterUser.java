package controller.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import controller.dbconnection.DbConnection;
import model.User;
import resources.Constants;


@WebServlet(asyncSupported = true, urlPatterns = { "/RegisterUser" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
	maxFileSize = 1024 * 1024 * 10, // 10MB
	maxRequestSize = 1024 * 1024 * 50)
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String username = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = "0";
		Part imagePart = request.getPart("image");	
		User userModel = new User(firstName, lastName, username, email, password, role, imagePart);
		
	    String savePath = Constants.IMAGE_DIR_SAVE_PATH;
	    String fileName = userModel.getImageUrlFromPart();
	    if(!fileName.isEmpty() && fileName != null)
    		imagePart.write(savePath + fileName);
		
		DbConnection con = new DbConnection();
		int result = con.registerUser(Constants.USER_REGISTER, userModel);
		if(result == 1) {
			request.setAttribute("registerMessage", "Successfully Registered");
			request.getRequestDispatcher("/mainform.jsp").forward(request, response);
		}else if(result == -1) {
			request.setAttribute("registerMessage", "User Already Exists");
			request.getRequestDispatcher("/mainform.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		
	}

}
