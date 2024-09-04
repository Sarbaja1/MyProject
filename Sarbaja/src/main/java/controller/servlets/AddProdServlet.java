package controller.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import controller.dbconnection.DbConnection;
import model.Product;
import resources.Constants;

@WebServlet(asyncSupported = true, urlPatterns = { "/AddProdServlet" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
	maxFileSize = 1024 * 1024 * 10, // 10MB
	maxRequestSize = 1024 * 1024 * 50)
public class AddProdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String prodName = request.getParameter("product_name");
		String price = request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String category = request.getParameter("brand");
		Part imagepart = request.getPart("image");
		Product prodModel = new Product(prodName, price, quantity, category, imagepart);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String savePath = Constants.IMAGE_DIR_SAVE_PATH;
		    String fileName = prodModel.getImageUrlFromPart();
		    if(!fileName.isEmpty() && fileName != null)
	    		imagepart.write(savePath + fileName);
		    
			DbConnection con = new DbConnection();
			int result = con.registerProd(Constants.PROD_REGISTER, prodModel);
			if(result == 1) {
				request.setAttribute("registerMessage", "Successfully Registered");
				request.getRequestDispatcher("/productform.jsp").forward(request, response);
			}else {
					request.getRequestDispatcher("/productform.jsp").forward(request, response);
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
