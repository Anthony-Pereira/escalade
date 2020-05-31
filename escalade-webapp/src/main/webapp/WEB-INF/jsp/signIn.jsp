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

	<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
		  rel="stylesheet">

	<title>Les amis de l'escalade</title>
</head>

<body>

	<%@ include file="fragment/header.jsp" %>

	<div class="container">
		<div class="row">
			<div class="jumbotron myform form bg-light col-md-5 mx-auto">
				<div class="myform form ">
					<div class="logo mb-3">
						<div class="col-md-12 text-center">
							<h1>Se connecter</h1>
						</div>
					</div>
					<form action="signIn" method="post">
						<div class="form-group">
							<label for="email">Adresse email</label> <input type="email"
								name="email" id="email" value="<c:out value="${compte.email}"/>" class="form-control"
								aria-describedby="emailHelp"
								placeholder="Entre votre adresse email" required>
						</div>
						<div class="form-group">
							<label for="motDePasse">Mot de passe</label> <input type="password"
								name="motDePasse" id="motDePasse" class="form-control"
								aria-describedby="emailHelp"
								placeholder="Entrez votre mot de passe" required>
						</div>

						<c:if test="${connectionMessage != null}">
							<p class="text-danger font-weight-bold">Un problème est survenu</p>
							<p>Le couple email/mot de passe est incorrect.</p>
						</c:if>

						<button type="submit" class=" btn btn-block btn btn-secondary tx-tfm">Connexion</button>

					</form>
					<div class="form-group">
						<p class="text-center">
							Vous n'avez pas de compte ? <a href="signUp" id="signup">S'inscrire</a>
						</p>
					</div>
					<div class="form-group">
						<p class="text-center">
							En souscrivant, vous acceptez nos <a href="termOfUse">Conditions
							d'utilisation</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>