<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"  content="width=device-width, initial-scale=1.0">
    <title>Add User</title>
    <link rel="stylesheet" type="text/css" href="css/userform.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
	<h1>Add User</h1>
	<form action="AddUserServlet" method="post" enctype="multipart/form-data">
		<label>First Name:</label>
		<input type="text" name="fname"><br><br>
		
		<label>Last Name:</label>
		<input type="text" name="lname"><br><br>
		
		<label>Username:</label>
		<input type="text" name="uname"><br><br>
		
		<label>Email:</label>
		<input type="email" name="email"><br><br>
		
		<label>Password:</label>
		<input type="password" name="password"><br><br>
		
		<input type="submit" value="Add User">
	</form>
</body>
</html>