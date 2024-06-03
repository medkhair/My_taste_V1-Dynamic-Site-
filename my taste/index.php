<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.cdnfonts.com/css/leckerli-one" rel="stylesheet">
	<link href="https://fonts.cdnfonts.com/css/metal-mania" rel="stylesheet">
	<meta charset="utf-8">
	<title>My taste</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script src="script.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg sticky-top">
	  <div class="container-fluid">
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse row" id="navbarTogglerDemo01">
	      <a class="navbar-brand col index" href="index.php">My Taste</a>
	      <form class="d-flex col" role="search" action="pages/search.php" method="get">
	        <input class="form-control me-2 " name="q" type="search" placeholder="Search" aria-label="Search">
	        <a class="btn btn-outline-info" id="searchButton" type="send" class="text" onclick="document.getElementById('searchForm').submit()" href="#"></a>
	      </form>
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0 col">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#content">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#cuisines">Cuisines</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#meals">Meals</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#recipes">Recipes</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<div id="content" align="center">
		<section class="sec" id="cuisines">
			<div class="line row" id="before">
				<div class="divider col" id="short"></div>
				<h1 class="title col-2">Cuisines</h1>
				<div class="divider col" id="short"></div>
			</div>
			<div class="row">
				<?php
					try {
				      $database = new PDO('mysql:host=localhost;dbname=my_taste','root','');
				    } catch (Exception $e) {
				      echo "ErrorCode : ". $e->getMessage();
				    }
				    $results = $database->query('SELECT * FROM recipes');
				    $i=0;
				    while (($row = $results->fetch()) && ($i!=3)){
			      		echo '	<div class="plat col">
									<a href="pages/recipe.php?id='.$row['id'].'">
										<div class="img" id="i'.$row['id'].'"></div>
									</a>
									<h2>'.$row['name'].' - '.$row['country'].'</h2>
								</div>';
						$i++;
				    } 
				?>
			</div>
			<div class="line row" id="after">
				<div class="divider col" id="short"></div>
				<a href="pages/cuisines.php" class="more col-2"><h2>More</h2></a>
				<div class="divider col" id="short"></div>
			</div>
		</section>
		<div class="divider col" id="long"></div>
		<section class="sec" id="meals">
			<div class="line row" id="before">
				<div class="divider col" id="short"></div>
				<h1 class="title col-2">Meals</h1>
				<div class="divider col" id="short"></div>
			</div>
			<div class="row">
				<?php
				    $results = $database->query('SELECT * FROM meals');
				    $i=0;
				    while (($row = $results->fetch()) && ($i!=3)){
			      		echo '	<div class="plat col">
									<a href="pages/meal.php?name='.$row['name'].'">
										<div class="img" id="i'.($row['id']).'"></div>
									</a>
									<h2>'.$row['name'].'</h2>
								</div>';
						$i++;
				    } 
				?>
			</div>
		</section>
		<div class="divider col" id="long"></div>
		<section class="sec" id="recipes">
			<div class="line row" id="before">
				<div class="divider col" id="short"></div>
				<h1 class="title col-2">Recipes</h1>
				<div class="divider col" id="short"></div>
			</div>
			<div class="row">
				<?php
				    $results = $database->query('SELECT * FROM recipes WHERE id>=2');
				    $i=0;
				    while (($row = $results->fetch()) && ($i!=12)){
			      		echo '	<div class="plat col-2">
									<a href="pages/recipe.php?id='.$row['id'].'">
										<div class="img" id="i'.($row['id']).'"></div>
									</a>
									<h2>'.$row['name'].'</h2>
								</div>';
						$i++;
				    } 
				?>
			</div>
			<div class="line row" id="after">
				<div class="divider col" id="short"></div>
				<a href="pages/recipes.php" class="more col-2"><h2>More</h2></a>
				<div class="divider col" id="short"></div>
			</div>
		</section>
		<div class="divider col" id="long"></div>
	</div>
</body>
</html>