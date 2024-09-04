<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html lang="eng">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport"  content="width=device-width, initial-scale=1.0">
        <title>Ecommerce store</title>
        <link rel="stylesheet" type="text/css" href="css/contact.css">
        <link rel="stylesheet" type="text/css" href="css/style2.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    </head>
    <body>
        <header>
            <a href="loggedindex.jsp" class="logo"><img src="img/shoplogo.png" alt=""></a>
            <ul class="navmenu">
                <li><a href="loggedindex.jsp">Home</a></li>
                <li><a href="productslogged.jsp">Products</a></li>
                <li><a href="aboutuslogged.jsp">About</a></li>
                <li><a href="contactlogged.jsp">Contact</a></li>
            </ul>
            <div class="nav-icon">
                <div class="dropdown">
				  <a href="#"><i class='bx bx-user' style="margin-top: 18px;"></i></a>
				  <div class="dropdown-content">
				    	<a href="updateprofile.jsp"><input type="submit" value="Profile" ></a>
				    <form action="LogoutServlet" method="post">
						<input type="submit" value="Logout" >
					</form>
				  </div>
				</div>
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
        <div class="container" style="margin-top: 30px;">
          <form action="#">
            <h1>Contact Us</h1>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Your name..." required>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Your email..." required>
            <label for="message">Message:</label>
            <textarea id="message" name="message" placeholder="Write your message here..." required></textarea>
            <input type="submit" value="Send">
          </form>
        </div>
        <footer class="section-p1">
          <div class="col">
              <img class ="logo" src="img/shoplogo.png" alt="">
              <h4>Contact</h4>
              <p><strong>Address: </strong> 562 Juvenile ROad, Washington Street 32, Washington D.C.</p>
              <p><strong>Phone: </strong> +01 2222 365 / (+91) 01 2345 6789</p>
              <p><strong>Hours: </strong> 10:00 - 19:00, Sun - Fri</p>
              <div class="follow">
                  <h4>Follow us</h4>
                  <div class="icon">
                      <i class='bx bxl-facebook'></i>
                      <i class='bx bxl-instagram' ></i>
                      <i class='bx bxl-twitter' ></i>
                      <i class='bx bxl-pinterest' ></i>
                      <i class='bx bxl-youtube' ></i>
                  </div>
              </div>
          </div>
          <div class="col">
              <h4>About</h4>
              <a href="aboutus.jsp">About Us</a>
              <a href="#">Contact Us</a>
              <a href="#">Cart Information</a>
          </div>
          <div class="col">
              <h4>My Account</h4>
              <a href="#">Sign In</a>
              <a href="#">View Cart</a>
              <a href="#">My Profile</a>
              <a href="#">Help</a>
          </div>
          <div class="col">
              <h4>Socials</h4>
              <a href="#">Instagram</a>
              <a href="#">Youtube</a>
              <a href="#">Facebook</a>
              <a href="#">Twitter</a>
          </div>
          <div class="copyright">
              <p>©2023, Ecommerce Store/ All its Affiliates</p>
          </div>
      </footer>
</body>
</html>