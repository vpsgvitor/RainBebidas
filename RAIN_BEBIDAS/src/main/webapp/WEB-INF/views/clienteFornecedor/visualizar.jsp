<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
﻿<html>

	<head>
		<meta charset="UTF-8">
		<title>Clientes/Fornecedores</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"	crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>

	<body class="text-center">
		<div class="content">
			<div class="row justify-content-center">
			
				<h3 class="display-4" style="margin-top: 33px;">Clientes/Fornecedores</h3>
			
			</div>
			<div class="row justify-content-md-center">
				<div class="col-md-7">
					<button type="button" class="btn btn-primary" onclick="location.href='cliente/novo'">Adicionar Cliente/Fornecedore</button>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Nome</th>
								<th scope="col">CPF/CNPJ</th>
								<th scope="col">Telefone</th>
								<th scope="col">Email</th>
								<th scope="col">#</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${clientes}" var="cliente">
								<tr>
									<td>${cliente.nome}</td>
									<td>${cliente.cnpj}</td>
									<td>${cliente.pessoa.telefone}</td>
									<td>${cliente.pessoa.email}</td>
									<td>
										<button class="btn btn-outline-primary btn-sm"><i class="fas fa-pencil-alt"></i></button>
										<button class="btn btn-outline-danger btn-sm" onclick="location.href='/cliente/excluir/${cliente.codigo}'"><i class="far fa-trash-alt"></i></button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		<footer class="text-center" style="margin-top: 33px;">
			SS
		</footer>
	</body>
</html>