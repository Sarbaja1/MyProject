<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport"  content="width=device-width, initial-scale=1.0">
        <title>Ecommerce store</title>
        <link rel="stylesheet" type="text/css" href="css/product.css">
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
        <section id = "product1" class="section-p1">
            <div class="heading-text">
                <h2>Our New<span> products</span></h2>
            </div>
            <p style="text-align: left; margin-left: 70px;">New Collection</p>
            <div class="sort-row"> 
                <div class="btn-group">
				    <button class="btnn btn-clicked" data-filter="all">All</button>
				    <button class="btnn" data-filter="tshirt">T-Shirt</button>
				    <button class="btnn" data-filter="pant">Pant</button>
				    <button class="btnn" data-filter="jacket">Jacket</button>
			 	</div>
				<input type="text" placeholder="Search Food" id="search">
            </div>
            <div class="pro-container">
                <div class="pro" data-item="tshirt">
                    <img src="img/products/shirt2.jpg" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Turquoise Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$78</h4>
                    </div>
                    <ion-icon name="cart" class="add-cart"></ion-icon>
                </div>
				<div class="pro" data-item="tshirt">
                    <img src="img/products/c_polo-shirt.png" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Formal Girl Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$70</h4>
                    </div>
                    <ion-icon name="cart" class="add-cart"></ion-icon>
                </div>
                <div class="pro" data-item="tshirt">
                    <img src="img/products/c_shirt-girl.png" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Summer Girl Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$70</h4>
                    </div>
                    <ion-icon name="cart" class="add-cart"></ion-icon>
                </div>
                <div class="pro" data-item="tshirt">
                    <img src="img/products/shirt1.jpg" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Summer Men Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$90</h4>
                    </div>
                    <ion-icon name="cart" class="add-cart"></ion-icon>
                </div>
                <div class="pro" data-item="pant">
                    <img src="img/products/c_pant_girl.png" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Turquoise Pant</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$50</h4>
                    </div>
                    <ion-icon name="cart" class="add-cart"></ion-icon>
                </div>
                <div class="pro" data-item="pant">
                    <img src="img/products/wpant1.jpg" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Formal black Pant</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$55</h4>
                    </div>
                    <ion-icon name="cart" class="add-cart"></ion-icon>
                </div>
                <div class="pro" data-item="pant">
                    <img src="img/products/wpant2.jpg" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Cream colored Pant</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$60</h4>
                    </div>
                    <ion-icon name="cart" class="add-cart"></ion-icon>
                </div>
                <div class="pro" data-item="pant">
                    <img src="img/products/wpan3.jpg" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Green colored pant</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$70</h4>
                    </div>
                    <ion-icon name="cart" class="add-cart"></ion-icon>
                </div>
            </div>
            <div class="product-btn">
                <a href="productslogged.jsp"><span>1</span></a>
                <a href="products2logged.jsp"><span>2</span></a>
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
                <a href="aboutuslogged.jsp">About Us</a>
                <a href="contactlogged.jsp">Contact Us</a>
                <a href=".box">Cart Information</a>
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
        <script src="js/products.js"></script>
        <script src="js/cart.js"></script>
    </body>
</html>