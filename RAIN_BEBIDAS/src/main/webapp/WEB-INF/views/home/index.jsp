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
	<header id="home">
		<div class="w-100 d-inline-block parallax">


			<nav class="navbar navbar-expand-md fixed-top navbar-trans navbar-inverse px-5">
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
						<li class="nav-item"><a class="nav-link menu-txtes" href="/login">Login</a></li>
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
			<div class="row justify-content-center m-0" style="padding-top: 33px;">
				<div class="jumbotron col-11 col-md-9 text-center bk-escurecido">

					<h3 class="display-4 title">A Empresa</h3>
					<hr class="my-4">

					<p class="text">A Rain Bebidas nasceu como uma ideia, mas nao apenas uma ideia, uma perspectiva.
						A alguns anos, a necessidade de criar algo novo fez com que a empresa fosse criada, com um escopo reduzido e um funcionamento mais arcaico, mas que atendeu a seu proposito inicial.
						Hoje, retornamos com novas tecnologias e novas funcionalidades para atender a uma nova demanda, contamos com um gerenciamento de estoque completo, um cadastro de clientes,
						gerenciamento total das movimentacoes financeiras, e movimentos de estoque, e diversas funcionalidades que atendem a Rain Bebidas da melhor forma.</p>
					<hr class="my-4">

					<div class="row justify-content-md-between justify-content-sm-center m-0">
						<div class="card col-10 col-md-6 col-lg-5 p-0 bk-trans-parent border-0">
							<img class="card-img-top br-9" src="resources/img/baesso.jpg" alt="Joao Victor Baesso">
							<div class="card-body">
								<h5 class="card-title title">Joao Victor Baesso</h5>
								<p class="card-text text">Gerente de alguma coisa, quase um Scrum Master, mas que faz alguma coisa.</p>

							</div>
						</div>

						<div class="card col-10 col-md-6 col-lg-5 p-0 bk-trans-parent border-0">
							<img class="card-img-top br-9" src="resources/img/vitao.png" alt="Vitor Paulo de Sa Galvan">
							<div class="card-body">
								<h5 class="card-title title">Vitor Paulo de Sa Galvan</h5>
								<p class="card-text text">Arquiteto da empresa, quase um CEO, mas com salario menor.</p>
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

						<p class="text">A Rain Bebidas e uma revendedora de bebidas, mas nao apenas isso, ela conta com o Sistema Rain Bebidas, um poderoso gerenciador de
							estoque que garante total controle sobre todos os movimentos de entrada e saida, um gerenciamento funcional das movimentacoes financeiras,
							um completo cadastro de clientes e fornecedores, e um gerenciador de produtos excelente, cheio de integracoes e funcionalidades que tornam
							o processo de gerencia de estoque simples e funcional.</p>
						<p class="text">Principais funcionalidades:</p>

						<div class="row justify-content-center">
							<ul class="list-group list-group-flush col-lg-7">
								<li class="list-group-item text-list">Gerenciador de produtos.</li>
								<li class="list-group-item text-list">Gerenciador de clientes e fornecedores.</li>
								<li class="list-group-item text-list">Controle de movimentos de estoque.</li>
								<li class="list-group-item text-list">Controle de movimentacoes financeiras.</li>
							</ul>
						</div>

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
					<p class="text">Projeto interdisciplinar desenvolvido por academicos do curso de Tecnologia em Analise e Desenvolvimento de Sistemas (UNOESC - Xanxere, 2019).<br />
						Criado para as disciplinas de Programacao Web e Programacao Utilizando Frameworks.<br />

					</p>
					<p class="text">Acompanhe o projeto completo no <a class="link-bonito" href="https://github.com/vpsgvitor/RainBebidas" target="_blank">GitHub</a>.</p>
					<p class="text">O primeiro projeto Rain Bebidas se encontra no <a class="link-bonito" href="https://github.com/victorbae/programacaoaplicadafinal" target="_blank">GitHub</a>.</p>

					<p class="text">
						<br />
						<a class="link-bonito" href="https://www.facebook.com/victhor.baesso" target="_blank">Joao Victor Baesso</a> - 999173453
						<br />
						<a class="link-bonito" href="https://www.facebook.com/vitor.paulo.353" target="_blank">Vitor Paulo de Sa Galvan</a> - 999126830
						<br />
						<br />
						Todos os direitos reservados®
					</p>

				</div>
			</div>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<script src="resources/js/index.js"></script>
</body>

</html>
