<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Rain Bebidas</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/style.css">
	<link rel="icon" href="resources/img/beer.png" />

</head>

<body>
	<header class="" id="home">
		<div class="w-100 d-inline-block parallax">


			<nav class="navbar navbar-expand-md fixed-top navbar-trans navbar-inverse mx-5">
				<a class="navbar-brand" href="#">
					Rain Bebidas
				</a>

				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navegação">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="nav navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link menu-txtes" href="#empresa">A Empresa</a></li>
						<li class="nav-item"><a class="nav-link menu-txtes" href="#produto">O Produto</a></li>
						<li class="nav-item"><a class="nav-link menu-txtes" href="#page-footer">Contato</a></li>
						<li class="nav-item"><a class="nav-link menu-txtes" href="#">Login</a></li>
					</ul>
				</div>
			</nav>

			<div class="d-flex h-75">
				<div class="row w-100 justify-content-center align-self-center">
					<h1 class="display-4 title-body-punk ">Rain Bebidas - O Retorno</h1>
				</div>
			</div>
			<video autoplay muted loop id="faz-chover">
			  <source src="resources/img/rainfall.mp4" type="video/mp4">
			</video>

		</div>
	</header>

	<div class="container-fluid p-0" id="container">

		<div class="parallax ajeita-altura" id="empresa">
			<div class="row justify-content-center m-0">
				<div class="jumbotron col-11 col-md-9 text-center bk-escurecido">

					<h3 class="display-4 title">A Empresa</h3>
					<hr class="my-4">

					<p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
						voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					<hr class="my-4">

					<div class="row justify-content-md-between justify-content-sm-center m-0">
						<div class="card col-10 col-md-6 col-lg-5 p-0 bk-trans-parent border-0">
							<img class="card-img-top br-9" src="resources/img/baesso.jpg" alt="Joao Victor Baesso">
							<div class="card-body">
								<h5 class="card-title title">Joao Victor Baesso</h5>
								<p class="card-text text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>

							</div>
						</div>

						<div class="card col-10 col-md-6 col-lg-5 p-0 bk-trans-parent border-0">
							<img class="card-img-top br-9" src="resources/img/vitao.png" alt="Vitor Paulo de Sa Galvan">
							<div class="card-body">
								<h5 class="card-title title">Vitor Paulo de Sa Galvan</h5>
								<p class="card-text text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
								</div>
						</div>
					</div>

				</div>
			</div>
		</div>


		<div class="parallax" id="produto">
			<div class="d-flex h-75">
				<div class="row justify-content-center align-self-center m-0">
					<div class="jumbotron col-11 col-md-9 text-center bk-escurecido">
						<h1 class="display-4 title">O Produto</h1>

						<hr class="my-4">

						<p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
							Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
							voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

					</div>
				</div>
			</div>
		</div>

	</div>

	</div>
	<footer class="parallax" id="page-footer">
		<div class="d-flex h-75">
			<div class="row w-100 justify-content-center align-self-center m-0">
				<div class="jumbotron col-11 col-md-9 text-center bk-escurecido">

					<h3 class="title">Rain Bebidas - O Retorno</h3>

					<hr class="my-4">

					<p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
						voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

					<hr class="my-4">

					<p class="text">Todos os direitos reservados ®</p>

				</div>
			</div>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>

</html>
