<?php
include("includes/init.php");

if (isset($_POST["search"])) {
	$search = $_POST["search"];
	header("Location: search.php?q=" . $search);
}
		
elseif (isset($_GET["q"])) {
	$search = $_GET["q"];
}

elseif (isset($_GET["search"])) {
	$search = $_GET["search"];
	header("Location: search.php?q=" . $search);
}

else {
	$search = "";
}

function searchArticlesTitlesFunction($searchText) {
	global $db;
	
	$searchArticlesTitlesRequestFunction = $db->prepare("
	SELECT *
	FROM articles
	WHERE published = 1
	AND LOWER(title) LIKE LOWER(:search)
	ORDER BY date DESC, time DESC
	");
	$searchArticlesTitlesRequestFunction->execute(array(
		"search" => ("%" . $searchText . "%")
	));

	$returnArray = array();

	while ($searchArticlesTitlesDataFunction = $searchArticlesTitlesRequestFunction->fetch()) {
		array_push($returnArray, $searchArticlesTitlesDataFunction["id"]);
	}

	$searchArticlesTitlesRequestFunction->closeCursor();

	return $returnArray;
}

$requestsArray = preg_split("/[\s]+/", $search);

$globalArticlesArray = array();

foreach ($requestsArray as $currentRequest) {
	$globalArticlesArray = array_merge($globalArticlesArray, searchArticlesTitlesFunction($currentRequest));
}

$globalArticlesArray = array_unique($globalArticlesArray);
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · Rechercher <?php echo($search); ?></title>
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
						<li class="breadcrumb-item active" aria-current="page">Recherche</li>
					</ol>
				</nav>
				<h2 class="font-weight-bold">Recherche "<?php echo($search); ?>"</h2>
			</div>
		</div>
		<div class="container">
			<section class="row justify-content-center">
				<?php
				foreach($globalArticlesArray as $currentArticle) {
					$searchArticlesTitlesRequest = $db->prepare("SELECT a.id, a.title, a.author, a.date, a.time, a.mainCategory, a.published, c.name, c.color, i.name imageName
					FROM articles a
					INNER JOIN categories c
					ON a.mainCategory = c.id
					INNER JOIN images i
					ON a.image = i.id
					WHERE a.published = 1
					AND a.id = :id
					");
					$searchArticlesTitlesRequest->execute(array(
						"id" => $currentArticle
					));
				
					while($searchArticlesTitles = $searchArticlesTitlesRequest->fetch()) {
						$articleContentRequest = $db->prepare("SELECT *
						FROM `articles-contents`
						WHERE article = :id
						ORDER BY date DESC, time DESC
						LIMIT 1");
						$articleContentRequest->execute(array(
							"id" => $searchArticlesTitles["id"]
						));
					
						while ($articleContent = $articleContentRequest->fetch()) {
							?>
							<div class="card bg-dark text-white card-article" style="border-color: #<?php echo($searchArticlesTitles['color']); ?>;">
								<img src="img/<?php echo($searchArticlesTitles['imageName']); ?>" class="card-img" alt="...">
								<div class="card-img-overlay" style="border-bottom-color: #<?php echo($searchArticlesTitles['color']); ?>;">
									<h5 class="card-title"><?php echo($searchArticlesTitles["title"]); ?></h5>
										<div class="card-article-content">
										<div class="card-text"><?php echo(substr(strip_tags($articleContent["content"]),0 ,140)."..."); ?></div>
										<div class="card-text"><a href="categories.php?id=<?php echo($searchArticlesTitles['mainCategory']); ?>" class="badge badge-pill" style="background-color: #<?php echo($searchArticlesTitles['color']); ?>;"><?php echo($searchArticlesTitles["categoryName"]); ?></a></div>
										<div class="card-text mt-auto"><a href="article.php?id=<?php echo($searchArticlesTitles['id']); ?>" class="btn btn-sm btn-secondary">Lire la suite... <i class="fas fa-angle-right"></i></a></div>
										<div class="card-text small">Publié le <?php echo($searchArticlesTitles["date"]); ?> à <?php echo($searchArticlesTitles["time"]); ?></div>
									</div>
								</div>
							</div>
							<?php
						}
						$articleContentRequest->closeCursor();
					}

					$searchArticlesTitlesRequest->closeCursor();
				}
				?>
			</section>
		</div>
		
		<!-- Footer -->
		<?php include("includes/footer.php"); ?>
		
		<script src="jquery/jquery.slim.min.js"></script>
		<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="includes/scripts.js"></script>
	</body>
</html>
<?php
/*$searchArticlesContentsRequest = $db->prepare("SELECT * FROM `articles-contents` WHERE content LIKE :search");
$searchArticlesContentsRequest->execute(array(
	"search" => ("%" . $search . "%")
));

while($searchArticlesContents = $searchArticlesContentsRequest->fetch()) {
	
}*/
?>
