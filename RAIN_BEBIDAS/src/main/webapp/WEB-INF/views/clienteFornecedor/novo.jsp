<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>

	<c:import url="../utils/_header.jsp"></c:import>

	<div class="container">
		<div class="row justify-content-center titulo">
		
			<h2 class="display-4" style="margin-top: 33px;">Novo Cliente / Fornecedor</h2>
		
		</div>
		<div class="row justify-content-md-center">
			<div class="col-md-12 col-lg-9">
				<form action="salvar" method="POST" class="col">
										
					<div class="form-group">
						<input type="hidden" class="form-control" id="codigo" name="clienteFornecedor.codigo" value="${codigo}">
						<input type="hidden" class="form-control" id="codigo" name="clienteFornecedor.pessoa.codigo" value="${pessoa.codigo}">
						<input type="text" class="form-control" id="nome" name="clienteFornecedor.pessoa.nome" placeholder="Nome" value="${pessoa.nome}">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="cpf" name="clienteFornecedor.pessoa.cpf" placeholder="CPF" value="${pessoa.cpf}">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="cpf" name="clienteFornecedor.cnpj" placeholder="CNPJ" value="${cnpj}">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="telefone" name="clienteFornecedor.pessoa.telefone" placeholder="Telefone" value="${pessoa.telefone}">
					</div>
					<div class="form-group">
						<input type="date" class="form-control" id="dtnascimento" name="clienteFornecedor.pessoa.dataNascimento" placeholder="Senha" value="${pessoa.dataNascimento}">
					</div>
					
					<button type="submit" class="btn btn-success float-right">Salvar</button>
				
				</form>
				
			</div>
		</div>
	</div>
	
	<c:import url="../utils/_footer.jsp"></c:import>