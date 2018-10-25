<?php
include "../Funciones/dbForeHouse.php";
$conect = new dbForehouse();
if($conect->getError()){
    echo 'error detectado';
}
$errores = array();
if(!empty($_POST)){
    $nombre = $conect->getMysqli()->real_escape_string($_POST['nombre']);
	$Apellido = $conect->getMysqli()->real_escape_string($_POST['Apellido']);
	$Telefono = $conect->getMysqli()->real_escape_string($_POST['Telefono']);
	$Password = $conect->getMysqli()->real_escape_string($_POST['password']);
	$Con_password =$conect->getMysqli()->real_escape_string($_POST['con_password']);
	$Email = $conect->getMysqli()->real_escape_string($_POST['email']);
if($conect->emailExist($email)){
    
}
}
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<link rel="icon" type="image/png" href="../imagenes/favicon-20181003095143672.ico" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/registros.css">
	<title>Inscripción</title>
	</head>
	<body>
		<header>
			<a href="../index.html"><img src="../imagenes/Logo2.png" alt=""></a>
		</header>
		<main>
			<section class="container">
			<h2>REGISTRO</h2>

			<section class="campos">
				<div class="container">
					<section id="signupbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2"></section>
					<div class="panel panel-info">
					
					<div class="panel-body" >
                    <section class="container">
						<form id="signupform" class="form-horizontal" role="form" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" autocomplete="on">
							
							<div id="signupalert"  class="alert alert-danger">
								<p>Error:</p>
								<span></span>
							</div>
							
							<div class="form row">
								<label for="nombre" class="col-xs-12 col-md-2 control-label">Nombre:</label>
								<div class="col-xs-12 col-md-10">
									<input type="text" class="form-control" name="nombre" placeholder="Nombre" value="" required >
								</div>
							</div>
							<br>
							<br>
							<div class="form row">
								<label for="usuario" class="col-xs-12 col-md-2 control-label">Apellido</label>
								<div class="col-xs-12 col-md-10">
									<input type="text" class="form-control" name="Apellido" placeholder="Apellido" value="" required>
								</div>
							</div>
							<br><br>
							<div class="form row">
								<label for="Telefono" class="col-xs-12 col-md-2 control-label">Telefono</label>
								<div class="col-xs-12 col-md-10">
									<input type="text" class="form-control" name="Telefono" placeholder="Telefono" value="" required>
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
								<label for="con_password" class="col-xs-12 col-md-2 control-label">Confirmar Password</label>
								<div class="col-xs-12 col-md-10">
									<input type="password" class="form-control" name="con_password" placeholder="Confirmar Password" required>
								</div>
							</div>
							<br><br>
							<div class="form row">
								<label for="email" class="col-xs-12 col-md-2 control-label">Email</label>
								<div class="col-xs-12 col-md-10">
									<input type="email" class="form-control" name="email" placeholder="Email" value="" required>
								</div>
							</div>
							<br><br>
							<div class="form row	">
					<label for="tipo_usuario" class="col-xs-12 col-md-2 control-label">Tipo de Usuario</label>
					<div class="col-xs-12 col-md-10">
						<select class="form-control" id="tipo_usuario" name="tipo_usuario">
							<option value="ERROR">Seleccione una opción...</option>
							<option value="USUARIO">Usuario</option>
							<option value="PENSION">Pension</option>
						</select>
					</div>
				</div>
				<br><br>
				<div class="form-group">
					<label for="hijos" class="col-sm-2 control-label">Sexo</label>
					<br>
					<div class="col-sm-10">
						<label class="radio-inline">
							<input type="radio" id="hijos" name="hijos" value="1" checked> Hombre
						</label>
						
						<label class="radio-inline">
							<input type="radio" id="hijos" name="hijos" value="0"> Mujer
						</label>
					</div>
				</div>
							<br><br>
							
							<div class="form-group">                                      
								<div class="col-md-offset-3 col-md-9">
									<button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i>Registrar</button> 
								</div>
							</div>
						</form>
						<?php 
						echo resultBlock($errors);
						 ?>
					</div>
				</section>
				</div>
				</div>
			</div>
			</section>
			
			
		</section>
		</main>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
		</body>
</html>
