<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<c:import url="../utils/_header.jsp"></c:import>
		<div class="container">
			<div class="justify-content-center titulo">
			
				<h3 class="display-4">Movimentos de Estoque </h3>
			
			</div>
			<div class="row justify-content-md-center">
						
				<div class="col-md-12 col-lg-12">
					<button type="button" class="btn btn-dark mb-4" onclick="location.href='/movimento/novo'">Novo</button>
					
					<div class="table-responsive">
						<table class="table table-bordered table-hover table-striped table-dark">
							<thead>
								<tr>
									<th class="text-center">Data movimento</th>
									<th class="text-center">Cliente Fornecedor</th>
									<th class="text-center">Tipo Movimento</th>
									<th class="text-center">Qnt. Produtos</th>
									<th class="text-center">Valor</th>
									<th class="text-center">#</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${movimentos}" var="movimento">
									<tr>
										<td class="text-center"><fmt:parseDate  value="${movimento.data}" type="date" pattern="yyyy-MM-dd" var="parsed" />
											<fmt:formatDate value="${parsed}" type="date" pattern="dd/MM/yyyy"/></td>
										<td>${movimento.clienteFornecedor.pessoa.nome}</td>
										<td class="text-center">${movimento.tipoMovimento}</td>
										<td class="text-center">${movimento.qntProdutos}</td>
										<td class="text-center"><fmt:formatNumber value="${movimento.valor}" type="currency"/></td>
										<td class="text-center">
											<button class="btn btn-outline-primary btn-sm" onclick="location.href='/movimento/visualizar/${movimento.codigo}'"><i class="fas fa-eye"></i></button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					
				</div>
			</div>
		</div>
		
	<c:import url="../utils/_footer.jsp"></c:import>
	