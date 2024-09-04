<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport"  content="width=device-width, initial-scale=1.0">
        <title>Ecommerce store</title>
        <link rel="stylesheet" type="text/css" href="css/admin.css">
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
                <h1>Admin, What Would u Like To Do?</h1>
            </div>
            <div class="adminmain-service">
                <div class="card" onclick="window.location.href='edituser.jsp';">
                    <h2>Users</h2>
                    <img class="img-fluid rounded-circle" src="img/admin/usersadmin.png" >
                    <p>Click here to go to the Users page</p>
                </div>
                <div class="card" onclick="window.location.href='editproducts.jsp';">
                    <h2>Products</h2>
                    <img class="img-fluid rounded-circle" src="img/admin/adminproducts.png" >
                    <p>Click here to go to the Products page </p>
                </div>
                <div class="card" onclick="window.location.href='viewcart.jsp';">
                    <h2>Cart</h2>
                    <img class="img-fluid rounded-circle" src="img/admin/online-shopping.png" >
                    <p>Click here to go to the Carts page </p>
                </div>
            </div>
        </section>
    </body>
</html>