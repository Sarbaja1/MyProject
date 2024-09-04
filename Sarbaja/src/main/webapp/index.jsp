<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html lang="eng">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport"  content="width=device-width, initial-scale=1.0">
        <title>Ecommerce store</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
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
            	<form action="mainform.jsp" method="post" enctype="multipart/form-data">
            		<a href="mainform.jsp"><i class='bx bx-user' style="margin-top: 13px;"></i></a>
                    <a href="mainform.jsp"><i class="bx bx-cart" style="margin-top: 13px"></i></a>
            	</form>
            </div>
        </header>
        <section class="main-home">
            <div class="body-content">
                <h1 class="anim">Browse <br> Our Shop</h1>
                <p class="anim">Shopping is the new way to be recognized in this world.</p>
                <a href="products.jsp" class="btn anim">Shop Now<i class='bx bx-right-arrow-alt'></i></a>
            </div>
            <img src="img/banner.png" class="feature-img anim" style="padding-bottom: 80px">
        </section>
        <section id="trending-product" class="section-p1">
            <div class="center-text">
                <h2>Our Latest<span> products</span></h2>
            </div>
            <div class = "products-container">
            	<div class = "products">
            		<img src = "img/latest products/1.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>Brooks</span>
            			<h5 class="cloth-title">Pink Classic Shoes</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$60</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/latest products/2.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>Addidas</span>
            			<h5 class="cloth-title">Blue Full Hoodie</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$40</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/latest products/3.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>Nike</span>
            			<h5 class="cloth-title">Maroon Full Sweater</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$55</h4>
            		</div>
                   <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/latest products/4.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>MLB</span>
            			<h5 class="cloth-title">Classic Cowboy Hat</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$30</h4>
            		</div>
                   <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/latest products/shoe-1.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>MEERMIN</span>
            			<h5 class="cloth-title">Luxury Leather Shoe</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$90</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/latest products/shoe-2.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>MEERMIN</span>
            			<h5 class="cloth-title">Classic Leather Shoe</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$40</h4>
            		</div>
                   <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a> 
            	</div>
                <div class = "products">
            		<img src = "img/latest products/shoe-3.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>MEZLAN</span>
            			<h5 class="cloth-title">Classic Black Shoe</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$20</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/latest products/shoe-4.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>MORJAS</span>
            			<h5 class="cloth-title">Cleverly</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$300</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a> 
            	</div>
                <div class = "products">
            		<img src = "img/latest products/jacket-1.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>L.L.BEAN</span>
            			<h5 class="cloth-title">Classic Leather Jacket</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$200</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a> 
            	</div>
                <div class = "products">
            		<img src = "img/latest products/jacket-2.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>BIKER</span>
            			<h5 class="cloth-title">Classic Striped Jacket</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$250</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/latest products/jacket-3.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>BIKER</span>
            			<h5 class="cloth-title">Greyish Jacket</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$100</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a> 
            	</div>
                <div class = "products">
            		<img src = "img/latest products/jacket-4.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>CHROMEO</span>
            			<h5 class="cloth-title">Purple Jacket</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$140</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
            </div>
        </section>
        <section id="trending-product" class="section-p1">
            <div class="center-text">
                <h2>Our Trending<span> products</span></h2>
            </div>
            <div class = "products-container">
            	<div class = "products">
            		<img src = "img/trending-product1.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>PUMA</span>
            			<h5 class="cloth-title">Orange Half Shorts</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$30</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/trending-product 2.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>JOCKEY</span>
            			<h5 class="cloth-title">Blue Classic Jeans</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$50</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a> 
            	</div>
                <div class = "products">
            		<img src = "img/trending-product3.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>ARROW</span>
            			<h5 class="cloth-title">Classic Flower Striped Pant</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$90</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/product_02.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>ADDIDAS</span>
            			<h5 class="cloth-title">Light Blue Sweater</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$30</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a> 
            	</div>
                <div class = "products">
            		<img src = "img/product_03.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>KAPPA</span>
            			<h5 class="cloth-title">Classic Full Girl Shirt</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$70</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/product_04.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>REEBOK</span>
            			<h5 class="cloth-title">Full-Sized Hoodie</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$45</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a> 
            	</div>
                <div class = "products">
            		<img src = "img/product_05.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>ADDIDAS</span>
            			<h5 class="cloth-title">Winter Hoodie Wear</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$120</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a> 
            	</div>
                <div class = "products">
            		<img src = "img/product_06.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>KAPPA</span>
            			<h5 class="cloth-title">Classic Brown Hoodie</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$100</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/product_07.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>FILA</span>
            			<h5 class="cloth-title">Pink Full Sized Hoodie</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$80</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/shoe2.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>Converse</span>
            			<h5 class="cloth-title">Classic Converse Shoes</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$200</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/shoe3.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>VANS</span>
            			<h5 class="cloth-title">Pink and Violet Color Shoes</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$100</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
                <div class = "products">
            		<img src = "img/shoe4.jpg" alt="" class ="cloth-img">
            		<div class = "desc">
            			<span>SAUCONY</span>
            			<h5 class="cloth-title">Green Leather Shoe</h5>
            			<div class="star">
            				<i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
                            <i class ="bx bx-star"></i>
            			</div>
                        <h4 class="cloth-price">$90</h4>
            		</div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
            	</div>
            </div>
        </section>
        <section id="website-banner" class="section-m1" style="background-image: url(img/offer_img.jpg);">
            <h4>Explore our Products</h4>
            <h2>All Tshirts and Other Accessories</h2>
            <a href="products.jsp"><button class="normal">Expore More</button></a>
        </section>
        <section class="about">
            <h1>About Our Store</h1>
            <hr>
            <div class="left-box">
                <h2>Looking for the best products?</h2>
                <p>We are energetic about discovering things that transcend the commonplace; that we think will get your attention and capture it. 
                In addition, to convey these to you wherever you are and at whatever point you believe you have sufficient energy to enjoy a bit.
                If you have any queries, You can visit the about us page to learn more regarding:</p>
                <ul class="about-feature">
                    <li>Services</li>
                    <li>Support</li>
                    <li>Features</li>
                    <li>Updates</li>
                </ul>
                <a href="aboutus.jsp"><button class="btn">Read More</button></a>
            </div>
            <div class="right-box">
                <img src="img/aboutus.jpg" alt="">
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
        <script src="js/script.js"></script>
        <script src="js/cart.js"></script>
    </body>
</html>