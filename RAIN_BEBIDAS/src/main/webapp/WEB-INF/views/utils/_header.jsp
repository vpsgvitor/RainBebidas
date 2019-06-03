<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Rain Bebidas</title>
		<link rel="icon" href="../resources/img/beer.png" />
		<link rel="stylesheet" href="../resources/css/appStyle.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
		<link rel="stylesheet" href="../resources/js/auto-complete/easy-autocomplete.min.css"> 
		
		
	</head>
	
	<body class="page-container">
		<nav class="navbar navbar-expand-md navbar-light bg-light">
			<a class="navbar-brand" href="/dashboard">Rain Bebidas</a>
			 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menuSuperior" aria-controls="menuSuperior" aria-expanded="false" aria-label="Toggle navigation">
			 	<span class="navbar-toggler-icon"></span>
			 </button>
			<div class="collapse navbar-collapse" id="menuSuperior">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="/estoque">Estoque</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/produto">Produtos</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/financeiro">Financeiro</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/clienteFornecedor">Clientes/Fornecedores</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/logout">Logout</a>
					</li>
				</ul>
			</div>
		</nav>