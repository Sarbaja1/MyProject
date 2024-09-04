<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport"  content="width=device-width, initial-scale=1.0">
        <title>Ecommerce store</title>
        <link rel="stylesheet" type="text/css" href="css/about.css">
        <link rel="stylesheet" type="text/css" href="css/style2.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    </head>
    <body class="about-body">
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
        <section id="page-header" class="about-header" style="background-image: url(img/about/banner.png);">
            <h2>#Know Us</h2>
            <p>Know everything about our website</p>
        </section>
        <section id = "about-head" class="section-p1">
            <img src="img/about/a5.jpg" alt="">
            <div>
                <h2>Who We Are?</h2>
                <p>Welcome to our Ecommerce Website! We are a startup 
                e-commerce company dedicated to providing high-quality service to our customers.
                At our Ecommerce Website, we believe that customer satisfaction is our top priority and 
                are committed to sustainability and ethical sourcing. We strive to offer the best prices on the market
                and provide exceptional customer service to ensure that you have the best possible shopping experience with us with no regrets at visiting our website.
                <br><br>
                Thank you for choosing our website. We look forward to serving you!
                </p>
                <br><br>
                <marquee loop="-1" scrollamount="5" width="100%">
                    Our Website stores featured brand products which are high in quality and is recommended by everyone.
                </marquee>
            </div>
        </section>
        <section class="service1">
            <div class="service-title">
                <h1>Our Services</h1>
            </div>
            <div class="main-service">
                <div class="card">
                    <div class="service-icon">
                        <i class='bx bxs-calendar-alt'></i>
                    </div>
                    <h2>Planning</h2>
                    <p>Planning is a critical component of any successful e-commerce website.
                    At our website, we take planning seriously to ensure that our website
                    is designed and executed with precision and attention to detail so that for the users it can be easier to access without
                    any hectic procedure.  
                    </p>
                </div>
                <div class="card">
                    <div class="service-icon">
                        <i class='bx bxs-wrench' ></i>
                    </div>
                    <h2>Renovation</h2>
                    <p>Renovation is an essential part of keeping any e-commerce website up-to-date and relevant to customers. 
                    At our website, we are committed to regularly renovating our website to ensure that it is user-friendly, 
                    visually appealing, and up-to-date with the latest technology. </p>
                </div>
                <div class="card">
                    <div class="service-icon">
                        <i class='bx bx-support'></i>
                    </div>
                    <h2>Support</h2>
                    <p>At our website, we are committed to providing our customers with exceptional support. 
                    We understand that shopping online can sometimes be confusing or frustrating, and we want to ensure that our customers 
                    have a positive experience every time they visit our website. </p>
                </div>
            </div>
        </section>
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
                <a href="#">About Us</a>
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
                <p>Â©2023, Ecommerce Store/ All its Affiliates</p>
            </div>
        </footer>
        <script src="js/script.js"></script>
    </body>
</html>