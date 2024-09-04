<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport"  content="width=device-width, initial-scale=1.0">
        <title>Single Product Page</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/sproduct.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    </head>
    <body>
        <header>
            <a href="index.jsp" class="logo"><img src="img/shoplogo.png" alt=""></a>
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
        <section id="product-details">
            <div class="single-pro-image">
                <img src="img/products/f1.jpg" width="100%" id="MainImg" alt="">
            </div>
            <div class="single-pro-details">
                <a href="products.jsp"><h6>Home/ New Product</h6></a>
                <h4>Colorful Beach Shirt</h4>
                <h2>$78</h2>
                <select>
                    <option>Select Size</option>
                    <option>S</option>
                    <option>M</option>
                    <option>XL</option>
                    <option>XXL</option>
                </select>
                <input type="number" value="1">
                <button class="btn-box">Add To Cart</button>
                <h4>Product Details</h4>
                <span style="text-align: justify;">Introducing our vibrant and stylish beach shirt, perfect for any beach or tropical getaway. 
                This shirt is designed with a colorful pattern of tropical flowers and palm leaves, set against a bright background of turquoise blue. 
                The combination of warm hues and cool shades makes for an eye-catching and visually appealing piece.
                <br><br>  
                This shirt distinctly provides three important features:
                <br>  
                unbelievable comfort<br>
                flexibility<br>
                contemporary style<br>
                <br>
                These shirt will look amazing and will give you a sense of comfort and relief that your body deserve!
                </span>
            </div>
        </section>
        <section id="trending-product" class="section-p1">
            <div class="center-text">
                <h2>Our Latest<span> products</span></h2>
            </div>
            <div class = "products-container">
            	<div class = "products">
            		<img src = "img/latest products/shoe-1.jpg" alt="">
            		<div class = "desc">
            			<span>MEERMIN</span>
            			<h5>Luxury Leather Shoe</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4>$90</h4>
            		</div>
                    <a href="#"><i class="bx bx-cart cart"></i></a>
            	</div>
                <div class = "products">
            		<img src = "img/latest products/2.jpg" alt="">
            		<div class = "desc">
            			<span>Addidas</span>
            			<h5>Blue Full Hoodie</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4>$40</h4>
            		</div>
                    <a href="#"><i class="bx bx-cart cart"></i></a>
            	</div>
                <div class = "products">
            		<img src = "img/latest products/3.jpg" alt="">
            		<div class = "desc">
            			<span>Nike</span>
            			<h5>Maroon Full Sweater</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4>$55</h4>
            		</div>
                    <a href="#"><i class="bx bx-cart cart"></i></a>
            	</div>
                <div class = "products">
            		<img src = "img/latest products/4.jpg" alt="">
            		<div class = "desc">
            			<span>MLB</span>
            			<h5>Classic Cowboy Hat</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4>$30</h4>
            		</div>
                    <a href="#"><i class="bx bx-cart cart"></i></a>
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
                <a href="aboutus.jsp">About Us</a>
                <a href="#">Contact Us</a>
                <a href="#">Cart Information</a>
            </div>
            <div class="col">
                <h4>My Account</h4>
                <a href="mainform.jsp">Sign In</a>
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
        <script src="js/script.js"></script>
    </body>
</html>