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

	<body class="text-center">
		<div class="content">
			<div class="row justify-content-center">
			
				<h3 class="display-4" style="margin-top: 33px;">Clientes/Fornecedores</h3>
			
			</div>
			<div class="row justify-content-md-center">
				<div class="col-md-7">
					<button type="button" class="btn btn-primary" onclick="location.href='clienteFornecedor/novo'">Adicionar Cliente/Fornecedor</button>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Nome</th>
								<th scope="col">CPF/CNPJ</th>
								<th scope="col">Telefone</th>
								<th scope="col">#</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${clientes}" var="cliente">
								<tr>
									<td>${cliente.pessoa.nome}</td>
									<td>${cliente.cnpj}</td>
									<td>${cliente.pessoa.telefone}</td>
									<td>
										<button class="btn btn-outline-primary btn-sm"><i class="fas fa-pencil-alt"></i></button>
										<button class="btn btn-outline-danger btn-sm" onclick="location.href='/clienteFornecedor/excluir/${cliente.codigo}'"><i class="far fa-trash-alt"></i></button>
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