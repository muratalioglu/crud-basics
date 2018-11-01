<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="main.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/updateProductStyle.css">
</head>
<body>
		<form method="POST" action="doUpdate">
			<table>
				<tr><td>ID: </td><td><input type="hidden" name="id" value="${product.id}"/></td>
				<tr><td>Product name:</td><td><input type="text" name="productName" value="${product.name}"/></td></tr>
				<tr><td>Stock: </td><td><input type="number" name="stock" min="0" max="10" value="${product.stock}"/></td></tr>
				<tr><td>Image: </td><td><img src="img/${product.imgName}"/><br><input type="file" name="imgName" accept="image/*"></td></tr>
				<tr><td></td><td><input type="submit" value="Update"/></td></tr>
			</table>
		</form>
		<br>
		<br>
		<a href="index.jsp">Home Page</a><br>	
</body>
</html>