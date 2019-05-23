<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
﻿<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Nova Pessoa</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</head>

<body class="text-center">
	<style type="text/css">
		.row {
			margin-left: 0px;
			margin-right: 0px;
		}
	</style>
	<div class="content">
		<div class="row justify-content-sm-center">

			<h3 class="display-4" style="margin-top: 33px;">Pessoa</h3>

		</div>
		<div class="row justify-content-md-center">
			<div class="col-sm-12 col-md-4">
				<form action="/usuario/salvar" method="post" class="col">

				<fieldset>
				<legend>Informacoes do Usuario</legend>
					<div class="form-group">
						<input type="text" class="form-control" id="user" name="email" placeholder="Email do usuario" value="email">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="senha" name="senha" placeholder="Senha" value="senha">
					</div>
				</fieldset>
				<fieldset>
				<legend>Informacoes da pessoa</legend>
					<div class="form-group">
						<input type="hidden" class="form-control" id="codigo" name="codigo" value="${pessoa.codigo}">
						<input type="text" class="form-control" id="nome" name="nome" placeholder="Nome" value="pessoa.nome">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="cpf" name="CPF" placeholder="CPF" value="pessoa.CPF">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="telefone" name="telefone" placeholder="Telefone" value="pessoa.telefone">
					</div>
					<div class="form-group">
						<input type="date" class="form-control" id="dataNascimento" name="Data Nascimento" placeholder="Data Nascimento" value="pessoa.dataNascimento">
					</div>
				</fieldset>
					<button type="submit" class="btn btn-primary">Salvar</button>

				</form>
			</div>
		</div>
		<footer class="text-center" style="margin-top: 33px;">
		</footer>
	</div>
</body>

</html>