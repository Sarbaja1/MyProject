package controller.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
     

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
        String price = request.getParameter("price");
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
						String query = "INSERT INTO orders (username, prod_name, price) VALUES (?, ?, ?)";
						PreparedStatement ps = con.prepareStatement(query);
						ps.setString(1,  username);
						ps.setString(2,  title);
						ps.setString(3,  price);
						int rowsInserted = ps.executeUpdate();
						if(rowsInserted > 0) {
							response.setContentType("text/html");
				        	PrintWriter out = response.getWriter();
				            out.println("<script type=\"text/javascript\">");
				            out.println("alert('Order Successful!');");
				            out.println("location='productslogged.jsp';");
				            out.println("</script>");
				            RequestDispatcher dispatcher = request.getRequestDispatcher("productlogged.jsp");
				            dispatcher.include(request, response);
						}else {
							response.setContentType("text/html");
				        	PrintWriter out = response.getWriter();
				            out.println("<script type=\"text/javascript\">");
				            out.println("alert('Order Not Successful!');");
				            out.println("location='productslogged.jsp';");
				            out.println("</script>");
				            RequestDispatcher dispatcher = request.getRequestDispatcher("productlogged.jsp");
				            dispatcher.include(request, response);
						}
					}catch(Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
	}

}
