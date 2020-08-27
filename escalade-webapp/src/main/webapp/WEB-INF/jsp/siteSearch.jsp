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

	<%@ include file="../../static/fragment/header.jsp"%>

	<div class="container">
		<div class="jumbotron bg-transparent">
			<h1 class="text-center"><c:out value="${sessionScope.siteTitle}"/></h1>
			<br/>
			<p><c:out value="${sessionScope.siteDescription}"/></p>
		</div>
		<c:if test="${!empty compte}">
			<div class="form-group">
				<h3>Commentaire</h3>
				<br/>
				<form method="post" action="site">
					<textarea class="form-control" name="commentaire" id="commentaire" rows="10" cols="100">Écrire quelque chose ici...</textarea>
					<br/>
					<div class="d-flex justify-content-center">
						<button type="submit" class="btn btn-primary tx-tfm">Envoyer</button>
					</div>
				</form>
				<br/>
			</div>
		</c:if>
	</div>

	<%@ include file="../../static/fragment/footer.jsp"%>

	<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>