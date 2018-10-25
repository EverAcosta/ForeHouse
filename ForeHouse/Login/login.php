<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" type="image/png" href="../imagenes/favicon-20181003095143672.ico" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/registros.css">
	<title>Ingreso</title>
	</head>
	<body>
		<header>
			<a href="../index.php"><img src="../imagenes/Logo2.png" alt=""></a>
		</header>
		<main>
			<section class="container">
			<h2>INGRESO</h2>
			
			<section class="campos">
				<div class="container">
					<section id="signupbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2"></section>
					<div class="panel panel-info">
					
					<div class="panel-body" >
						<section class="container">
						<form id="signupform" class="form-horizontal" role="form" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" autocomplete="off">
							
							<div id="signupalert"  class="alert alert-danger">
								<p>Error:</p>
								<span></span>
							</div>
							<br>
							<br>
							<div class="form row">
								<label for="usuario" class="col-xs-12 col-md-2 control-label">Usuario</label>
								<div class="col-xs-12 col-md-10">
									<input type="text" class="form-control" name="usuario" placeholder="Usuario" value="" required>
								</div>
							</div>
							<br><br>
							<div class="form row">
								<label for="password" class="col-xs-12 col-md-2 control-label">Password</label>
								<div class="col-xs-12 col-md-10">
									<input type="password" class="form-control" name="password" placeholder="Password" required>
								</div>
							</div>
							<br><br>
							<div class="form row">    
							<ul class="col-mx-10 col-md-6">
									<li><a href="olvido.php">Olvide mi contraseña</a>
									</li>
									<li><a href="registro.php">Quiero registrarme</a></li>
								</ul>                                  
								<div class="col-mx-2 col-md-6">
									<button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i>Ingresar</button> 
								</div>
								
							</div>
						</form>
					</section>
				</div>
			</div>
		</div>
	</section>
</section>
				
			</section>
			
			</section>
			
		</main>

			<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	</body>
</html>
