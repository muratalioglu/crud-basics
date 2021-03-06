<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<c:if test="${not empty sessionScope.currentSessionUser}">
	<p>
		<a href="./logout">Logout</a>
		<a href="./addProduct.jsp">Add Product</a>
	</p>
	<jsp:include page="WEB-INF/products.jsp"/>
</c:if>
<c:if test="${empty sessionScope.currentSessionUser}">
	<c:redirect url="login.jsp"/>
</c:if>
</body>
</html>