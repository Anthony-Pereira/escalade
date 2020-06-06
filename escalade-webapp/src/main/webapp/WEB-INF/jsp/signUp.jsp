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

	<%@ include file="../../static/fragment/header.jsp"%>

	<div class="container">
		<div class="jumbotron myform form bg-light">
			<div class="logo mb-3">
				<div class="col-md-12 text-center">
					<h1>Inscription</h1>
				</div>
			</div>
			<form action="signUp" method="post">
				<div class="row mt-5">
					<div class="form-group col-lg-6">
						<label for="prenom">Prénom</label> <input type="text"
							name="prenom" class="form-control" id="prenom"
							aria-describedby="prenom" placeholder="Entrez votre prénom"
							required> <span class="text-danger"></span>
					</div>
					<div class="form-group col-lg-6">
						<label for="nom">Nom</label> <input type="text"
							name="nom" class="form-control" id="nom"
							aria-describedby="lastname" placeholder="Entrez votre nom"
							required> <span class="text-danger"></span>
					</div>
					<div class="form-group col-lg-6">
						<label for="email">Adresse email</label> <input type="email"
							name="email" class="form-control" id="email"
							aria-describedby="email" placeholder="Entrez votre email"
							required> <span class="text-danger"></span>
					</div>
					<div class="form-group col-lg-6">
						<label for="confirmeEmail">Confirmation de votre email</label> <input type="email"
							name="confirmeEmail" class="form-control" id="confirmeEmail"
							aria-describedby="confirmeEmail" placeholder="Confirmez votre email"
							required> <span class="text-danger"></span>
					</div>
					<div class="form-group col-lg-6">
						<label for="motDePasse">Mot de passe</label> <input type="password"
							name="motDePasse" id="motDePasse" class="form-control"
							aria-describedby="motDePasse" placeholder="Entrez un mot de passe"
							required> <span class="text-danger"></span>
					</div>
					<div class="form-group col-lg-6">
						<label for="confirmeMotDePasse">Confirmation de votre mot de passe</label> <input type="password"
							name="confirmeMotDePasse" id="confirmeMotDePasse" class="form-control"
							aria-describedby="confirmeMotDePasse" placeholder="Confirmez un mot de passe"
							required> <span class="text-danger"></span>
					</div>
					<div class="col-md-12 text-center my-3">
						<button type="submit"
							class=" btn btn-block my btn btn-secondary tx-tfm">S'inscrire</button>
					</div>
				</div>
			</form>
			<div class="col-md-12 ">
				<div>
					<c:choose>
						<c:when test="${!empty confirmationError}">
							<p class="text-danger font-weight-bold">Un problème est survenu</p>
							<p>Le couple email ou mot de passe est incorrect.</p>
						</c:when>
						<c:when test="${!empty emailExist}">
							<p class="text-danger font-weight-bold">Un problème est survenu</p>
                            <p>L'adresse e-mail est déjà utilisée</p>
                            <p>Vous avez indiqué que vous êtes un nouveau utilisateur, mais un compte existe déjà avec l'adresse email <c:out value="${compte.email}"/></p>
						</c:when>
					</c:choose>
				</div>
				<div>
					<p class="text-center">
						Vous possédez déjà un compte ?<a href="signIn" id="signin">
							Identifiez-vous</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../../static/fragment/javascript.jsp"%>

</body>
</html>