<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<!-- Meta tags -->
	<meta charset="utf-8">
	<meta name="viewport"
		  content="width = device-width, initial-scale = 1, shrink-to-fit = no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="static/css/bootstrap.css">
	<link rel="stylesheet" href="static/css/style.css">

	<title>Les amis de l'escalade</title>
</head>

<body>

	<%@ include file="static/fragment/header.jsp"%>

	<div class="jumbotron bg-transparent">
		<h1 class="text-center"><c:out value="${sessionScope.siteTitle}"/></h1>
		<br/>
		<p><c:out value="${sessionScope.siteDescription}"/></p>
	</div>

	<%@ include file="static/fragment/footer.jsp"%>

	<%@ include file="static/fragment/bootstrap.jsp"%>

</body>
</html>