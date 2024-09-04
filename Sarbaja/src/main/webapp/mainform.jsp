<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/64d58efce2.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.8.0/dist/alpine.min.js" defer></script>
    <script src="https://cdn.jsdelivr.net/gh/alpine-collective/alpine-magic-helpers@0.3.x/dist/index.js"></script>
    <link rel="stylesheet" href="css/sign.css">
    <title>FORUM PAGE</title>
  </head>
  <body>
    <% 
    String errorMessage = (String) request.getAttribute("errorMessage");
    String registerMessage = (String) request.getHeader("registerMessage");
    %>
    <% if (registerMessage != null) { %>
          <div class="register-message"><%= registerMessage %></div>
      <% } %>
      <% if (errorMessage != null) { %>
          <div class="error-message"><%= errorMessage %></div>
      <% } %>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="LoginServlet" class="sign-in-form" method = "post">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="uname"/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password"/>
            </div>
            <input type="submit" value="Login" class="btn solid" />
          </form>
          <form action="RegisterUser" method="post" class="sign-up-form" enctype="multipart/form-data">
            <h2 class="title">Sign up</h2>
            <img id="image-preview" src="img/profile.png" class="rounded rounded-circle" alt="placeholder">
            <input type="file" id = "file-input" name="image" class="form-control" accept="image/*" onchange="updatePreview(this, 'image-preview')" >
            <label for="file-input" id="filelabel">Upload</label>
            <div class="input-field">
				<i class="fas fa-user"></i>
              <input type="text" placeholder="First Name" name = "fname">
            </div>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Last Name" name = "lname">
            </div>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name = "uname"/>
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" placeholder="Email" name = "email"/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password"/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Confirm Password" name="cpassword">
            </div>
            <input type="submit" class="btn" value="Sign up" />
          </form>
        </div>
      </div>
      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here ?</h3>
            <p>
              Don't have an account yet? No problem! Register now and start exploring all that our site has to offer
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="img/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              Enter your login details below to access your account.
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="img/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>
    <script src="js/sign.js">
	    function showMyImage(fileInput) {
	        var files = fileInput.files;
	        for (var i = 0; i < files.length; i++) {           
	            var file = files[i];
	            var imageType = /image.*/;     
	            if (!file.type.match(imageType)) {
	                continue;
	            }           
	            var img=document.getElementById("thumbnil");            
	            img.file = file;    
	            var reader = new FileReader();
	            reader.onload = (function(aImg) { 
	                return function(e) { 
	                    aImg.src = e.target.result; 
	                }; 
	            })(img);
	            reader.readAsDataURL(file);
	        }    
	    }
    </script>
  </body>
</html>
    