<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value = "pt_BR"/>

	<c:import url="../utils/_header.jsp"></c:import>

	<div class="container">
		<div class="row justify-content-center titulo">
		
			<h2 class="display-4" style="margin-top: 33px;">Novo Movimento</h2>
		
		</div>
		<div class="row justify-content-md-center">
			<div class="col-md-12 col-lg-9">
				<form:form modelAttribute="movimento" action="/movimento/salvar" method="post" cssClass="col">
					<div class="form-group">
						<form:hidden path="codigo" cssClass="form-control" id="codigo" value="${movimento.codigo}" />
						<form:hidden path="clienteFornecedor.codigo" cssClass="form-control" id="clifor-codigo" value="${movimento.clienteFornecedor.codigo}" />
						<form:input path="clienteFornecedor.pessoa.nome" cssClass="form-control" id="clifor-nome" value="" />
					</div>
					<div class="form-group">
						 <select class="form-control" id="tipoMovimento" name="tipoMovimento">
					      <option value="VENDA">Venda</option>
					      <option value="COMPRA">Compra</option>
					    </select>
					</div>
					
					<fieldset>
						<legend class="col-form-label">Produtos</legend>
						<div class="row mb-2">
							<div class="input-group col">
							  <input type="text" class="form-control" placeholder="Produto" aria-label="Produto" aria-describedby="basic-addon2">
							  <div class="input-group-append">
							    <button class="btn btn-outline-success" type="button"><i class="fas fa-plus"></i></button>
							  </div>
						  </div>
						</div>
						  
					   <div class="row mb-3">
						    <div class="col">
						      <input type="number" class="form-control" placeholder="Quantidade">
						    </div>
						    <div class="col">
						      <input type="text" class="form-control" placeholder="Valor">
						    </div>
						  </div>
						<div class="form-group">
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th scope="col">Nome</th>
									<th scope="col">Quantidade</th>
									<th scope="col">Valor</th>
									<th scope="col">#</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${movimento.produtos}" var="produtoMovimento" varStatus="status">
									<tr>
										<td>
											<span id="nome-produto"></span>
											<form:input path="produtos[${status.index}].codigo" cssClass="form-control" id="prod-codigo" value="${produtoMovimento.codigo}" />
											<form:input path="produtos[${status.index}].produto.codigo" cssClass="form-control" id="prod-codigo" value="${produtoMovimento.produto.codigo}" />
								        	<form:input path="produtos[${status.index}].produto.nome" cssClass="form-control" id="prod-nome" value="${produtoMovimento.produto.nome}" />
										</td>
										<td>
											<span id="valor-produto"></span>
								        	<form:input path="produtos[${status.index}].quantidade" cssClass="form-control" id="prod-quantidade" value="${produtoMovimento.quantidade}" />
								        </td>
										<td>
<%-- 											<fmt:formatNumber value="${valor}" type="currency"/> --%>
									        <form:input path="produtos[${status.index}].produto.valor" cssClass="form-control" id="prod-valor" value="${produtoMovimento.produto.valor}" />
										</td>
										<td>
											<button class="btn btn-outline-primary btn-sm"><i class="fas fa-pencil-alt"></i></button>
											<button class="btn btn-outline-danger btn-sm"><i class="far fa-trash-alt"></i></button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						</div>
					</fieldset>
					
					<button type="submit" class="btn btn-success float-right">Salvar</button>
				
				</form:form>
			</div>
		</div>
	</div>
	
	<c:import url="../utils/_footer.jsp"></c:import>