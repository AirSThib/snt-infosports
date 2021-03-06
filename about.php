<?php
include("includes/init.php");

$_SESSION["currentPage"] = "about.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Infosports · À propos de nous</title>
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="fontawesome/css/all.css" />
		<link rel="stylesheet" href="includes/styles.css" />
		<link rel="icon" href="img/icon.png" />
	</head>
	<body>
		<!-- Header -->
		<?php include("includes/header.php"); ?>
		<div class="jumbotron jumbotron-fluid bg-light">
			<div class="container">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb bg-light">
						<li class="breadcrumb-item"><a href="index.php">Accueil</a></li>
						<li class="breadcrumb-item active" aria-current="page">À propos de nous</li>
					</ol>
				</nav>
				<h2 class="font-weight-bold">À propos de nous</h2>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-4">
					<div class="row">
						<div class="col-sm-12 col-md-8">
							<p>Infosports est un site web créé par un groupe d'élève du lycée Nelson Mandela publiant des articles sur le sport en général.</p>
							<img src="img/logo.png" class="img img-rounded m-4" alt="Logo d'Infosports" />
							<p>Nos rédacteurs en chefs : Alex Pinson & Thibauld Scelles</p>
						</div>
						<div class="col-sm-12 col-md-4">
							<h3 class="font-weight-bold">Notre mission</h3>
							Notre but est de créer un site web qui recense tous les sports.
							<ul>
								<li>Nous essayons de proposer le plus d'articles possibles.</li>
								<li>Nous avons pour but de parler de l'actualité sportive en général.</li>
								<li>Nous écrirons des articles sur tous les sujets possibles.</li>
								<li>S'il y a le moindre problème sur ce site web, nous essaierons de le corriger au plus vite selon nos disponibilités.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Footer -->
		<?php include("includes/footer.php"); ?>
		
		<script src="jquery/jquery.slim.min.js"></script>
		<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="includes/scripts.js"></script>
	</body>
</html>
