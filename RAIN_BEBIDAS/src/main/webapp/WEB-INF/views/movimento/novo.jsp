<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value = "pt_BR"/>

	<c:import url="../utils/_header.jsp"></c:import>
	<script type="text/javascript">
	
		function addProd() {
			var codProduto = $('#IdProduto').val();
			var nomeProduto = $('#ACProduto').val();
			var valProd = $('#valor-prod').val();
			var prodQnt = $('#prod-qnt').val();
			var valorTotal = valProd * prodQnt;  
			const $body = $('#corpo-tabela');
			var $lastN = $('#corpo-tabela tr').length;
			var nextN = $lastN > 0 ? $lastN + 1 : 0;
			
			var partial =  `
			<tr data-nm="` + nextN + `">
				<td>
					<input type="hidden" name="produtos[` + nextN + `].produto.nome" class="form-control" id="prod-nome" value="` + nomeProduto + `" />
					<input type="hidden" name="produtos[` + nextN + `].produto.codigo" class="form-control" id="prod-codigo" value="` + codProduto + `" />
		        	<c:out value="` + nomeProduto + `"></c:out>
				</td>
				<td>
					<input type="hidden" name="produtos[` + nextN + `].quantidade" class="form-control" id="prod-quantidade" value="` + prodQnt + `" />
					` + prodQnt + ` und.
		        </td>
				<td>
					<input type="hidden" name="produtos[` + nextN + `].valor" class="form-control" id="prod-codigo" value="` + valProd + `" />
					R$ ` + valProd + `
				</td>
				<td>
					<input type="hidden" name="produtos[` + nextN + `].valorTotal" class="form-control" id="prod-valorTotal" value="` + valorTotal + `" />
					R$ ` + valorTotal + `
				</td>
				<td>
					<button class="btn btn-outline-danger btn-sm excluir-prod block" type="button" onclick="excluirProd(` + nextN + `);"><i class="far fa-trash-alt"></i></button>
				</td>
			</tr>`;
			
			$body.append(partial);
			zeraTudo();
		};
		
		function excluirProd(nm) {
			$('#corpo-tabela .excluir-prod').parents('tr[data-nm="'+nm+'"]').remove();
		};
		
		function zeraTudo(){
			$('#IdProduto').val("");
			$('#ACProduto').val("");
			$('#valor-prod').val("");
			$('#prod-qnt').val("");
		}
		
		function bloqueiaTudo(){
			$('.block').prop('disabled', true);
		}
		
		function desbloqueiaTudo(){
			$('.block').prop('disabled', false);
		}
	</script>
	
	<c:choose>
		<c:when test="${not empty movimento.codigo}">
			<c:set var="title" value="Movimento - ${movimento.codigo}" />
			<script>
			 window.addEventListener('load', function () {
				bloqueiaTudo();
				$(".add-prod").addClass('d-none');
			}, false);
			</script>
		</c:when>
		<c:otherwise>
			<c:set var="title" value="Novo Movimento" />
			<script>
				 window.addEventListener('load', function () {
					desbloqueiaTudo();
					$(".add-prod").removeClass('d-none');
				}, false);
			</script>
		</c:otherwise>
	</c:choose>
	
	<div class="container">
		<div class="row justify-content-center titulo">
			<h2 class="display-4" style="margin-top: 33px;">${title}</h2>
		</div>
		<c:if test="${not empty error}">
			<div class="row justify-content-center col-md-12 col-lg-9">
				<div class="alert alert-danger" role="alert">
				  <c:out value="${error}"></c:out>
				</div>
			</div>
		</c:if>
		<div class="row justify-content-md-center">
			<div class="col-md-12 col-lg-9">
				<form action="/movimento/salvar" method="post" class="col">
					<div class="form-group">
						<input type="hidden" name="codigo" class="form-control" id="codigo" value="${movimento.codigo}" />
						<input type="hidden" name="clienteFornecedor.codigo" class="form-control" id="idCliente" value="${movimento.clienteFornecedor.codigo}" />
						<label for="ACCliente">Nome Cliente/Fornecedor:</label>
						<input type="text" class="form-control block" name="clienteFornecedor.pessoa.nome" placeholder="Cliente/Fornecedor" 
							id="ACCliente" aria-label="Cliente" aria-describedby="basic-addon3" value="${movimento.clienteFornecedor.pessoa.nome}" required>
					</div>
					<div class="form-group">
						<label for="tipoMovimento">Tipo do movimento:</label>
						 <select class="form-control block" id="tipoMovimento" name="tipoMovimento" required>
					      <option value="SAIDA" <c:if test="${movimento.tipoMovimento eq 'SAIDA'}">selected</c:if>>Venda</option>
					      <option value="ENTRADA" <c:if test="${movimento.tipoMovimento eq 'ENTRADA'}">selected</c:if>>Compra</option>
					    </select>
					</div>
					
					<div class="form-group">
						<label for="data-vencimento">Data de vencimento da conta:</label>
						<input type="text" name="dataVencimento" class="form-control date block" id="data-vencimento" value="${movimento.dataVencimento}" required/>
					</div>
					
					<fieldset>
						<legend class="col-form-label">Produtos:</legend>
						<div class="row mb-2 add-prod">
							<div class="input-group col">
							  <input type="hidden" id="IdProduto">
							  <input type="text" class="form-control block" placeholder="Produto" id="ACProduto" aria-label="Produto" aria-describedby="basic-addon2">
							  <div class="input-group-append">
							    <button class="btn btn-outline-success block" type="button" onclick="addProd();"><i class="fas fa-plus" id="addProduct"></i></button>
							  </div>
						  </div>
						</div>
						  
					   <div class="row mb-3 add-prod">
						    <div class="col">
						      <input type="number" class="form-control block" placeholder="Quantidade"  id="prod-qnt">
						    </div>
						    <div class="col">
						      <input type="text" class="form-control money block" placeholder="Valor" id="valor-prod">
						    </div>
						  </div>
						<div class="form-group">
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th scope="col">Nome</th>
									<th scope="col">Quantidade</th>
									<th scope="col">Valor unitario</th>
									<th scope="col">Valor total</th>
									<th scope="col">#</th>
								</tr>
							</thead>
							<tbody id="corpo-tabela">
								<c:forEach items="${movimento.produtos}" var="produtoMovimento" varStatus="status">
									<tr data-nm="${status.index}">
										<td>
											<input type="hidden" name="produtos[${status.index}].codigo" class="form-control" id="prod-codigo" value="${produtoMovimento.codigo}" />
											<input type="hidden" name="produtos[${status.index}].produto.codigo" class="form-control" id="prod-codigo" value="${produtoMovimento.produto.codigo}" />
								        	<input type="hidden" name="produtos[${status.index}].produto.nome" class="form-control" id="prod-nome" value="${produtoMovimento.produto.nome}" />
								        	<c:out value="${produtoMovimento.produto.nome}"></c:out>
										</td>
										<td>
											<input type="hidden" name="produtos[${status.index}].quantidade" class="form-control" id="prod-quantidade" value="${produtoMovimento.quantidade}" />
											<fmt:formatNumber value="${produtoMovimento.quantidade}" type="number"/> und.
								        </td>
										<td>
											<input type="hidden" name="produtos[${status.index}].valor" class="form-control" id="prod-valor" value="${produtoMovimento.valor}" />
											<fmt:formatNumber value="${produtoMovimento.valor}" type="currency"/>
										</td>
										<td>
											<input type="hidden" name="produtos[${status.index}].valorTotal" class="form-control" id="prod-valorTotal" value="${produtoMovimento.valorTotal}" />
											<fmt:formatNumber value="${produtoMovimento.valorTotal}" type="currency"/>
										</td>
										<td>
											<button class="btn btn-outline-danger btn-sm excluir-prod block" type="button" onclick="excluirProd(${status.index});"><i class="far fa-trash-alt"></i></button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						</div>
					</fieldset>
					<button type="submit" class="btn btn-success float-right block">Salvar</button>
				
				</form>
			</div>
		</div>
	</div>
	
	<c:import url="../utils/_footer.jsp"></c:import>