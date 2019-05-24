<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
﻿<html>

	<head>
		<meta charset="UTF-8">
		<title>Clientes/Fornecedores</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	</head>
<body>

	<form action="salvar" method="POST" class="col">
							
		<div class="form-group">
			<input type="hidden" class="form-control" id="codigo" name="codigo" value="${codigo}">
			<input type="hidden" class="form-control" id="codigo" name="pessoa.codigo" value="${pessoa.codigo}">
			<input type="text" class="form-control" id="nome" name="pessoa.nome" placeholder="Nome" value="${pessoa.nome}">
		</div>
		<div class="form-group">
			<input type="text" class="form-control" id="cpf" name="pessoa.cpf" placeholder="CPF" value="${pessoa.cpf}">
		</div>
		<div class="form-group">
			<input type="text" class="form-control" id="cpf" name="cnpj" placeholder="CNPJ" value="${cnpj}">
		</div>
		<div class="form-group">
			<input type="text" class="form-control" id="telefone" name="pessoa.telefone" placeholder="Telefone" value="${pessoa.telefone}">
		</div>
		<div class="form-group">
			<input type="date" class="form-control" id="dtnascimento" name="pessoa.dataNascimento" placeholder="Senha" value="${pessoa.dataNascimento}">
		</div>
		
		<button type="submit" class="btn btn-primary">Salvar</button>
	
	</form>
</body>
</html>