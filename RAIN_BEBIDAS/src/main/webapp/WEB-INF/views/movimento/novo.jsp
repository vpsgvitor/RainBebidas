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
			var nextN = $lastN > 0 ? $lastN + 1 : 1;
			
			var partial =  `<tr><td>
				<input id="prod-codigo" name="produtos[` + nextN + `].produto.codigo" class="form-control" value="` + codProduto + `" type="hidden">
				<input id="prod-nome" name="produtos[` + nextN + `].produto.nome" class="form-control disabled" value="` + nomeProduto + `" type="text">
			</td>
			<td><input id="prod-quantidade" name="produtos[` + nextN + `].quantidade" class="form-control" value="` + prodQnt + `" type="text"></td>
			<td><input id="prod-valor" name="produtos[` + nextN + `].valor" class="form-control" value="` + valProd + `" type="text"></td>
			<td>` + valorTotal + `</td>
			<td>
				<button class="btn btn-outline-danger btn-sm  excluir-prod" type="button" onclick="excluirProd();"><i class="far fa-trash-alt"></i></button>
			</td>
			</tr>`;	
			
			$body.append(partial);
			zeraTudo();
		};
		
		function excluirProd() {
			$('#corpo-tabela .excluir-prod').parents("tr").remove();
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
			<script>
				bloqueiaTudo();
			</script>
		</c:when>
		<c:otherwise>
			<script>
				desbloqueiaTudo();
			</script>
		</c:otherwise>
	</c:choose>
	
	<div class="container">
		<div class="row justify-content-center titulo">
		
			<h2 class="display-4" style="margin-top: 33px;">Novo Movimento</h2>
		
		</div>
		<div class="row justify-content-md-center">
			<div class="col-md-12 col-lg-9">
				<form action="/movimento/salvar" method="post" class="col">
					<div class="form-group">
						<input type="hidden" name="codigo" class="form-control" id="codigo" value="${movimento.codigo}" />
						<input type="hidden" name="clienteFornecedor.codigo" class="form-control" id="idCliente" value="${movimento.clienteFornecedor.codigo}" />
						<input type="text" class="form-control block" placeholder="Cliente/Fornecedor" id="ACCliente" aria-label="Cliente" aria-describedby="basic-addon3" value="${movimento.clienteFornecedor.pessoa.nome}">
							  
					</div>
					<div class="form-group">
						 <select class="form-control block" id="tipoMovimento" name="tipoMovimento">
					      <option value="SAIDA">Venda</option>
					      <option value="ENTRADA">Compra</option>
					    </select>
					</div>
					
					<div class="form-group">
						<label for="data-vencimento">Data vencimento da puta que pariu</label>
						<input type="text" name="dataVencimento block" class="form-control date" id="data-vencimento" value="${movimento.dataVencimento}" />
					</div>
					
					<fieldset>
						<legend class="col-form-label">Produtos</legend>
						<div class="row mb-2">
							<div class="input-group col block">
							  <input type="hidden" id="IdProduto">
							  <input type="text" class="form-control" placeholder="Produto" id="ACProduto" aria-label="Produto" aria-describedby="basic-addon2">
							  <div class="input-group-append">
							    <button class="btn btn-outline-success" type="button" onclick="addProd();"><i class="fas fa-plus" id="addProduct"></i></button>
							  </div>
						  </div>
						</div>
						  
					   <div class="row mb-3">
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
									<tr>
										<td>
											<input type="hidden" name="produtos[${status.index}].codigo" class="form-control" id="prod-codigo" value="${produtoMovimento.codigo}" />
											<input type="hidden" name="produtos[${status.index}].produto.codigo" class="form-control" id="prod-codigo" value="${produtoMovimento.produto.codigo}" />
								        	<input type="text" name="produtos[${status.index}].produto.nome" class="form-control disabled" id="prod-nome" value="${produtoMovimento.produto.nome}" />
										</td>
										<td>
								        	<input type="text" name="produtos[${status.index}].quantidade" class="form-control" id="prod-quantidade" value="${produtoMovimento.quantidade}" />
								        </td>
										<td>
									        <input type="text" name="produtos[${status.index}].valor" class="form-control money" id="prod-valor" value="${produtoMovimento.valor}" />
										</td>
										<td>
											<fmt:formatNumber value="" type="currency"/>
										</td>
										<td>
											<button class="btn btn-outline-danger btn-sm excluir-prod" type="button" onclick="excluirProd();"><i class="far fa-trash-alt"></i></button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						</div>
					</fieldset>
<%-- 											<fmt:formatNumber value="${valor}" type="currency"/> --%>
					<button type="submit" class="btn btn-success float-right">Salvar</button>
				
				</form>
			</div>
		</div>
	</div>
	
	<c:import url="../utils/_footer.jsp"></c:import>