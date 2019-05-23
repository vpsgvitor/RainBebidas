<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/usuario/salvar" method="post" class="col">
							
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