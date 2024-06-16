<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.cdnfonts.com/css/leckerli-one" rel="stylesheet">
	<link href="https://fonts.cdnfonts.com/css/metal-mania" rel="stylesheet">
	<meta charset="utf-8">
	<?php
		$ide = $_GET['id'];
		try {
	    $database = new PDO('mysql:host=localhost;dbname=my_taste','root','');
	  } catch (Exception $e) {
	    echo "ErrorCode : ". $e->getMessage();
	  } 
	  $results = $database->prepare('SELECT * FROM recipes WHERE id = :ide');
	  $results->bindParam(':ide', $ide, PDO::PARAM_INT);
	  $results->execute();
    if (($row = $results->fetch())){
  		echo '<title>'.$row['name'].'</title>';}
				?>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="../styles.css">
    <script src="../script.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg sticky-top">
	  <div class="container-fluid">
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse row" id="navbarTogglerDemo01">
	      <a class="navbar-brand col index" href="../index.php">My Taste</a>
	      <form class="d-flex col" role="search" action="search.php" method="get">
	        <input class="form-control me-2 " name="q" type="search" placeholder="Search" aria-label="Search">
	        <a class="btn btn-outline-info" id="searchButton" type="send" class="text" onclick="document.getElementById('searchForm').submit()" href="#"></a>
	      </form>
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0 col">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="../index.php">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="cuisines.php">Cuisines</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="../index.php">Meals</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="recipes.php">Recipes</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav> 
	<div id="content" align="center">
		<?php
					$ide = $_GET['id'];
		try {
	    $database = new PDO('mysql:host=localhost;dbname=my_taste','root','');
	  } catch (Exception $e) {
	    echo "ErrorCode : ". $e->getMessage();
	  } 
	  $results = $database->prepare('SELECT * FROM recipes WHERE id = :ide');
	  $results->bindParam(':ide', $ide, PDO::PARAM_INT);
	  $results->execute();
    if (($row = $results->fetch())){
    		$inst = $row['instructions'];
    		$inst = str_replace(".", ".</li><li>", $inst);
    		$inst = substr($inst, 0, -4);
    		
			echo '<section class="sec" id="recipe">
				<div class="line row" id="before">
					<div class="divider col" id="short"></div>
					<h1 class="title col-2">'.$row['name'].'</h1>
					<div class="divider col" id="short"></div>
				</div>
				<div class="row">

  		<div class="pic col">
								<div class="img " id="i'.$row['id'].'"></div>
							</div>
							<div class="text col">
								<div class="part" id="description">
									<div class="line row" id="before">
										<div class="divider col" id="short"></div>
										<h1 class="title col"><u>Description</u></h1>
										<div class="divider col" id="short"></div>
									</div>
									<div class="paragraphe">
										<p align="center">
										'.$row['description'].'	
										</p>
									</div>
								</div>
								<div class="part" id="p_t">
									<div class="line row" id="before">
										<div class="divider col" id="short"></div>
										<h1 class="title col"><u>Preparation Time</u></h1>
										<div class="divider col" id="short"></div>
									</div>
									<div class="paragraphe">
										<p align="center">
											'.$row['prepararion_time'].'
										</p>
									</div>
								</div>
								<div class="part" id="ingredients">
									<div class="line row" id="before">
										<div class="divider col" id="short"></div>
										<h1 class="title col"><u>Ingredients</u></h1>
										<div class="divider col" id="short"></div>
									</div>
									<div class="paragraphe">
										<p align="center">
											'.$row['ingredients'].'
										</p>
									</div>
								</div>
								<div class="part" id="instructions">
									<div class="line row" id="before">
										<div class="divider col" id="short"></div>
										<h1 class="title col"><u>Instructions</u></h1>
										<div class="divider col" id="short"></div>
									</div>
									<div class="paragraphe">
										<ol align="left">
										<li>
											'.$inst
											.'
										</ol>
									</div>
								</div>
							</div>';
						}
				?>
				
						
			</div>
		</section>
		<div class="divider col" id="long"></div>
	</div>
</body>
</html>
