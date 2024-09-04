<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"  content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <link rel="stylesheet" type="text/css" href="css/productform.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
<h1>Update Product</h1>
<form method="post" action="UpdateProdServlet">
	<label for="product_name">Product Name:</label>
	<input type="text" name="product_name" required><br><br>

	<label for="price">Price:</label>
	<input type="number" name="price" min="0" required><br><br>

	<label for="brand">Brand:</label>
	<input type="text" name="brand" required><br><br>

	<label for="quantity">Quantity:</label>
	<input type="number" name="quantity" min="0" required><br><br>

	<label for="image">Image:</label>
	<input type="file" name="image" accept="image/*" required><br><br>

	<input type="submit" name="submit" value="Update Product">
</form>
</body>
</html>