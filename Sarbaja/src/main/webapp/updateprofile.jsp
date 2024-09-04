<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>User Profile</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }
    .container {
      width: 80%;
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0,0,0,0.2);
    }
    h1 {
      font-size: 36px;
      margin-bottom: 20px;
    }
    label {
      display: block;
      font-size: 18px;
      margin-bottom: 10px;
    }
    input[type="text"], input[type="password"], input[type="file"] {
      font-size: 18px;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #ccc;
      width: 100%;
      margin-bottom: 20px;
    }
    input[type="submit"] {
      background-color:  #088178;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      font-size: 18px;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #3e8e41;
    }
    a {
      color:  #088178;
      text-decoration: none;
    }
    .back-button {
      margin-bottom: 20px;
    }
    
  </style>
</head>
<body>
  <div class="container">
    <h1>User Profile</h1>
    <form method="post" action="/UpdateUserServlet" enctype="multipart/form-data">
      <label for="username">Username</label>
      <input type="text" id="username" name="us_name" required>
      <label for="password">Password</label>
      <input type="password" id="password" name="pswd" required>
      <label for="confirm_password">Confirm Password</label>
      <input type="password" id="confirm_password" name="confirm_password" required>
      <input type="submit" value="Save Changes">
    </form>
    <div class="back-button">
    <br><br>
      <a href="loggedindex.jsp"><input type = "submit" value="Back to Index Page"></a>
    </div>
  </div>
</body>
</html>