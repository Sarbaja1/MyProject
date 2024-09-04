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
				<input type="text" placeholder="Search Clothes" id="search">
            </div>
            <div class="pro-container">
                <div class="pro" data-item="tshirt" onclick="window.location.href='sproduct.jsp';" >
                    <img src="img/products/f1.jpg" class ="cloth-img">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Colourful Beach Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$78</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="tshirt">
                    <img src="img/products/f2.jpg" class ="cloth-img">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Cream Flower Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$70</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="tshirt">
                    <img src="img/products/f3.jpg" class ="cloth-img">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Red Rose Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$95</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="tshirt">
                    <img src="img/products/f4.jpg" class ="cloth-img">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">White Rose Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$115</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="tshirt">
                    <img src="img/products/f5.jpg" class ="cloth-img">
                    <div class="des">
                        <span>WearsHome</span>
                        <h5 class="cloth-title">Blue Half Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$60</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="jacket">
                    <img src="img/products/f6.jpg" class ="cloth-img">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Ibiza Jacket</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$90</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="pant">
                    <img src="img/products/f7.jpg" class ="cloth-img">
                    <div class="des">
                        <span>Tsarmoire</span>
                        <h5 class="cloth-title">Cream Flower Pant</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$75</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="tshirt">
                    <img src="img/products/f8.jpg" class ="cloth-img">
                    <div class="des">
                        <span>Lamour</span>
                        <h5 class="cloth-title">Ash Top</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$120</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="tshirt">
                    <img src="img/products/n1.jpg" class ="cloth-img">
                    <div class="des">
                        <span>Hubba</span>
                        <h5 class="cloth-title">Blue Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$120</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="tshirt">
                    <img src="img/products/n2.jpg" class ="cloth-img">
                    <div class="des">
                        <span>Hubba</span>
                        <h5 class="cloth-title">Zebra Shirt</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$120</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="jacket">
                    <img src="img/products/product-5.jpg" style="height: 70%;" class ="cloth-img">
                    <div class="des">
                        <span>Hubba</span>
                        <h5 class="cloth-title">Plain Hoodie</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$120</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
				<div class="pro" data-item="jacket">
                    <img src="img/products/product-4.jpg" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Hubba</span>
                        <h5 class="cloth-title">Greyish hoodie</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$120</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
                <div class="pro" data-item="jacket">
                    <img src="img/products/hoodie.jpg" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Hubba</span>
                        <h5 class="cloth-title">Black colored hoodie</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$120</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
                <div class="pro" data-item="pant">
                    <img src="img/products/pant2.jpg" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Hubba</span>
                        <h5 class="cloth-title">Jogging tracks</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$120</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
                <div class="pro" data-item="pant">
                    <img src="img/products/pant1.jpg" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Hubba</span>
                        <h5 class="cloth-title">Gray Pants</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$120</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
                <div class="pro" data-item="pant">
                    <img src="img/products/pant3.jpg" class ="cloth-img" style="height: 70%;">
                    <div class="des">
                        <span>Hubba</span>
                        <h5 class="cloth-title">Formal Pants</h5>
                        <div class="star">
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                            <i class='bx bx-star'></i>
                        </div>
                        <h4 class="cloth-price">$120</h4>
                    </div>
                    <a href="mainform.jsp"><ion-icon name="cart" class="add-cart"></ion-icon></a>
                </div>
            </div>
            <div class="product-btn">
                <a href="products.jsp"><span>1</span></a>
                <a href="products2.jsp"><span>2</span></a>
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
                <a href="mainform.jsp">My Profile</a>
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