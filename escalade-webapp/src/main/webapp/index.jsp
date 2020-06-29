<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
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

	<div class="container-fluid" id="main_title">
		<c:choose>
			<c:when test="${empty sessionScope.compte}">
				<h1 class="d-flex justify-content-center">Bienvenue sur le site
					des amis de l'escalade !</h1>
				<br />
				<h5 class="d-flex justify-content-center">Ce site est dedié aux
					amoureux de cette discipline qui souhaitent trouver leur prochain
					spot.</h5>
			</c:when>
			<c:when test="${!empty sessionScope.compte}">
				<h1 class="d-flex justify-content-center">Bienvenue <c:out value="${empty compte.pseudo ? compte.prenom : compte.pseudo}"/></h1>
			</c:when>
		</c:choose>

	</div>

	<!-- carousel -->
	<div class="container" id="main_img">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="static/img/slide_1.jpg" alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="static/img/slide_2.jpg" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="static/img/slide_3.jpg" alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!-- carousel -->


	<div class="container">
	<!-- vocabulary button -->
		<section>
			<article>
				<br />
				<div class="bg-transparent d-flex justify-content-center">
					<ul class="list-unstyled list-inline text-center my-3">
						<li class="list-inline-item"><h4>Pour les non-initiés,
								voici quelques éléments du vocabulaire du grimpeur</h4></li>
						<li class="list-inline-item"><a
							class="btn btn-secondary btn-rounded" href="vocabulary.jsp">En
								savoir plus</a></li>
					</ul>
				</div>
				<hr class="my-4">
			</article>
		</section>
	<!-- vocabulary button -->

	<!-- main -->
		<section>
			<div class="mb-5">
				<div class="row mb-2">
					<div class="col-md-6">
						<div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
							<div class="col p-4 d-flex flex-column position-static">
								<strong class="d-inline-block mb-2 text-primary">World</strong>
								<h3 class="mb-0">Featured post</h3>
								<div class="mb-1 text-muted">Nov 12</div>
								<p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
								<a href="#" class="stretched-link">Continue reading</a>
							</div>
							<div class="col-auto d-none d-lg-block">
								<svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
							<div class="col p-4 d-flex flex-column position-static">
								<strong class="d-inline-block mb-2 text-success">Design</strong>
								<h3 class="mb-0">Post title</h3>
								<div class="mb-1 text-muted">Nov 11</div>
								<p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
								<a href="#" class="stretched-link">Continue reading</a>
							</div>
							<div class="col-auto d-none d-lg-block">
								<svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
							</div>
						</div>
					</div>
				</div>

				<main role="main" class="container">
					<div class="row">
						<div class="col-md-8 blog-main">
							<h3 class="pb-4 mb-4 font-italic border-bottom">
								From the Firehose
							</h3>

							<div class="blog-post">
								<h2 class="blog-post-title">Sample blog post</h2>
								<p class="blog-post-meta">January 1, 2014 by <a href="#">Mark</a></p>

								<p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>
								<hr>
								<p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
								<blockquote>
									<p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
								</blockquote>
								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
								<h2>Heading</h2>
								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
								<h3>Sub-heading</h3>
								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
								<pre><code>Example code block</code></pre>
								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
								<h3>Sub-heading</h3>
								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
								<ul>
									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>
									<li>Donec id elit non mi porta gravida at eget metus.</li>
									<li>Nulla vitae elit libero, a pharetra augue.</li>
								</ul>
								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>
								<ol>
									<li>Vestibulum id ligula porta felis euismod semper.</li>
									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>
									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>
								</ol>
								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>
							</div><!-- /.blog-post -->

							<div class="blog-post">
								<h2 class="blog-post-title">Another blog post</h2>
								<p class="blog-post-meta">December 23, 2013 by <a href="#">Jacob</a></p>

								<p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
								<blockquote>
									<p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
								</blockquote>
								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
							</div><!-- /.blog-post -->

							<div class="blog-post">
								<h2 class="blog-post-title">New feature</h2>
								<p class="blog-post-meta">December 14, 2013 by <a href="#">Chris</a></p>

								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
								<ul>
									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>
									<li>Donec id elit non mi porta gravida at eget metus.</li>
									<li>Nulla vitae elit libero, a pharetra augue.</li>
								</ul>
								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>
							</div><!-- /.blog-post -->

							<nav class="blog-pagination">
								<a class="btn btn-outline-primary" href="#">Older</a>
								<a class="btn btn-outline-secondary disabled" href="#" tabindex="-1" aria-disabled="true">Newer</a>
							</nav>

						</div><!-- /.blog-main -->

						<aside class="col-md-4 blog-sidebar">
							<div class="p-4 mb-3 bg-light rounded">
								<h4 class="font-italic">About</h4>
								<p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
							</div>

							<div class="p-4">
								<h4 class="font-italic">Archives</h4>
								<ol class="list-unstyled mb-0">
									<li><a href="#">March 2014</a></li>
									<li><a href="#">February 2014</a></li>
									<li><a href="#">January 2014</a></li>
									<li><a href="#">December 2013</a></li>
									<li><a href="#">November 2013</a></li>
									<li><a href="#">October 2013</a></li>
									<li><a href="#">September 2013</a></li>
									<li><a href="#">August 2013</a></li>
									<li><a href="#">July 2013</a></li>
									<li><a href="#">June 2013</a></li>
									<li><a href="#">May 2013</a></li>
									<li><a href="#">April 2013</a></li>
								</ol>
							</div>

							<div class="p-4">
								<h4 class="font-italic">Elsewhere</h4>
								<ol class="list-unstyled">
									<li><a href="#">GitHub</a></li>
									<li><a href="#">Twitter</a></li>
									<li><a href="#">Facebook</a></li>
								</ol>
							</div>
						</aside><!-- /.blog-sidebar -->
					</div><!-- /.row -->
				</main><!-- /.container -->
			</div>
		</section>
		<!-- main -->
	</div>

	<%@ include file="static/fragment/footer.jsp"%>

	<%@ include file="static/fragment/bootstrap.jsp"%>

</body>
</html>