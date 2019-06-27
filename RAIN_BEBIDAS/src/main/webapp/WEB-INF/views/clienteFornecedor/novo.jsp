<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<c:import url="../utils/_header.jsp"></c:import>

	<div class="container">
		<div class="row justify-content-center titulo">
		
			<h2 class="display-4" style="margin-top: 33px;">Novo Cliente / Fornecedor</h2>
		
		</div>
		<div class="row justify-content-md-center">
			<div class="col-md-12 col-lg-9">
				<form:form modelAttribute="clienteFornecedor" action="/clienteFornecedor/salvar" method="post" cssClass="col">
					<div class="form-group">
						<form:hidden path="codigo" cssClass="form-control" id="codigo" value="${clienteFornecedor.codigo}" />
						<form:input path="pessoa.nome" required="true" type="text" cssClass="form-control" id="nome" placeholder="Nome" value="${clienteFornecedor.pessoa.nome}" />
					</div>
					<div class="form-group">
						<form:input path="pessoa.cpf" type="text" cssClass="form-control" id="cpf" placeholder="CPF" value="${clienteFornecedor.pessoa.cpf}" />
					</div>
					<div class="form-group">
						<form:input path="cnpj" type="text" cssClass="form-control" id="cnpj" placeholder="CNPJ" value="${clienteFornecedor.cnpj}" />
					</div>
					<div class="form-group">
						<form:input path="pessoa.telefone" required="true" type="text" cssClass="form-control" id="telefone" placeholder="Telefone" value="${clienteFornecedor.pessoa.telefone}" />
					</div>
					
					<fieldset>
						<legend class="col-form-label">Endereco</legend>
						<div class="form-group">
							<form:input path="pessoa.endereco.estado" type="text" cssClass="form-control" id="estado" placeholder="Estado" value="${clienteFornecedor.pessoa.endereco.estado}" />
						</div>
						<div class="form-group">
							<form:input path="pessoa.endereco.cidade" type="text" cssClass="form-control" id="cidade" placeholder="Cidade" value="${clienteFornecedor.pessoa.endereco.cidade}" />
						</div>
						<div class="form-group">
							<form:input path="pessoa.endereco.bairro" type="text" cssClass="form-control" id="bairro" placeholder="Bairro" value="${clienteFornecedor.pessoa.endereco.bairro}" />
						</div>
						<div class="form-group">
							<form:input path="pessoa.endereco.rua" type="text" cssClass="form-control" id="rua" placeholder="Rua" value="${clienteFornecedor.pessoa.endereco.rua}" />
						</div>
						<div class="form-group">
							<form:input path="pessoa.endereco.numero" type="text" cssClass="form-control" id="numero" placeholder="Numero" value="${clienteFornecedor.pessoa.endereco.numero}" />
						</div>				
						<div class="form-group">
							<form:input path="pessoa.endereco.cep" type="text" cssClass="form-control" id="cep" placeholder="CEP" value="${clienteFornecedor.pessoa.endereco.cep}" />
						</div>
					</fieldset>
					
					<button type="submit" class="btn btn-dark float-right">Salvar</button>
				
				</form:form>
			</div>
		</div>
	</div>	
	<c:import url="../utils/_footer.jsp"></c:import>