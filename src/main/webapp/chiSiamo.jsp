<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList, model.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/x-icon" href="logo.ico">
<link rel="stylesheet" href="css/dropdown.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/styles.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Chi Siamo</title>
</head>
<body>
	<%String email = (String) session.getAttribute("email");
	  String name = (String) session.getAttribute("name");
	  String brand = (String) session.getAttribute("brand");
	  Boolean role = (Boolean) session.getAttribute("adminRoles");
	 if (email == null) { %>
	<jsp:include page="headerGuest.jsp"></jsp:include>

	<% } 
	 else if(role == Boolean.TRUE)
	 {%>
	<jsp:include page="headerAdmin.jsp"></jsp:include>
	<% }
	 else { %>
	<jsp:include page="headerUtente.jsp"></jsp:include>
	<%} %>

	<jsp:include page="searchbar.jsp"></jsp:include>

	<div class="jumbotron">
		<div class="container">
			<h3 class="display-3">Chi siamo?</h3>
			<p>MovinGame � un sito fittizio di e-commerce, realizzato per il
				corso di Tecnologie Software per il Web da Melania Leonelli e
				Salvatore Scafa (Classe 1 Resto 0, a.a. 2021/2022).</p>
		</div>
	</div>

	<jsp:include page="footer.html"></jsp:include>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="js/ajaxsearch.js"></script>
</body>
</html>