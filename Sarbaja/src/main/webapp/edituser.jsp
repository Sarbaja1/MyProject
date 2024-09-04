<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%! Connection con = null; %>
<!DOCTYPE html>
<html lang="eng">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport"  content="width=device-width, initial-scale=1.0">
        <title>Ecommerce store</title>
        <link rel="stylesheet" type="text/css" href="css/update.css">
        <link rel="stylesheet" type="text/css" href="css/style2.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    </head>
    <body>
        <header>
            <a href="admin.jsp" class="logo"><img src="img/shoplogo.png" alt=""></a>
            <ul class="navmenu">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="products.jsp">Products</a></li>
                <li><a href="aboutus.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
            <div class="nav-icon">
                <a href="#"><i class='bx bx-user' style="margin-top: 13px;"></i></a>
                <div class="box">
                    <div class="cart-count">0</div>
                    <ion-icon name="cart"  id="cart-icon" ></ion-icon>
                </div>   
                <div class="cart">
                    <div class="cart-title">Cart Items</div>
                    <div class="cart-content">
                    </div>  
                    <div class="total">
                        <div class="total-title">Total</div>
                        <div class="total-price">Rs.0</div>
                    </div>
                    <button class="btn-buy">Checkout</button>
                    <ion-icon name="close" id="cart-close"></ion-icon>
                </div>         
            </div>
        </header>
        <section class="admin-row">
            <div class="admin-title">
                <h1>Admin, Welcome to List of Users</h1>
            </div>
            <a href="userform.jsp"><button type="button" class="add">Add Users</button></a>
            <div class="update-table">
            	<%try{
            		String fname = request.getParameter("first_name");
            		String lname = request.getParameter("last_name");
            		String uname = request.getParameter("username");
            		String email = request.getParameter("email");
            		
            		Class.forName("com.mysql.jdbc.Driver");
            		String url = "jdbc:mysql://localhost:3306/coursework_db";
            		String usr = "root";
            		String pwd = "";
            		con = DriverManager.getConnection(url, usr, pwd);
            		
            		String query = "Select first_name, last_name, username, email from users";
            		PreparedStatement ps = con.prepareStatement(query);
            		ResultSet result = ps.executeQuery();
            	%>
            	<table>
  					<br><br>
				  <tr>
				    <th>First Name</th>
				    <th>Last Name</th>
				    <th>User Name</th>
				    <th>Email</th>
				    <th></th>
				  </tr>
				  <% 
				  	while(result.next()){
				  %>
				    <tr>
				    	<td><% out.println(result.getString("first_name")); %></td>
				    	<td><% out.println(result.getString("last_name")); %></td>
				    	<td><% out.println(result.getString("username")); %></td>
				    	<td><% out.println(result.getString("email")); %></td>
				    <td>
				      <form action="updateadminuser.jsp"><button class="update-btn">Update</button></form>
                      <form action="DeleteUser"><button class="delete-btn">Delete</button></form>
				    </td>
				  </tr>
				  <%
				  	}
				  %>
				  <!-- more rows... -->
				</table>
            </div>
            <%
            	}catch(Exception e){
            		out.println(e.getMessage());
            	}finally{
            		con.close();
            	}
            %>
        </section>
    </body>
</html>