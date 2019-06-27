<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<c:import url="../utils/_header.jsp"></c:import>
		<div class="container">
			<div class="row justify-content-center titulo">
			
				<h3 class="display-4">Movimentos de Estoque </h3>
			
			</div>
			<div class="row justify-content-md-center">
						
				<div class="col-md-12 col-lg-9">
					<button type="button" class="btn btn-primary mb-4" onclick="location.href='/movimento/novo'">Novo</button>
					
					<table class="table table-bordered table-hover table-striped">
						<thead>
							<tr>
								<th scope="col">Data movimento</th>
								<th scope="col">Cliente Fornecedor</th>
								<th scope="col">Tipo Movimento</th>
								<th scope="col">Qnt. Produtos</th>
								<th scope="col">Valor</th>
								<th scope="col">#</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${movimentos}" var="movimento">
								<tr>
									<td><fmt:parseDate  value="${movimento.data}" type="date" pattern="yyyy-MM-dd" var="parsed" />
										<fmt:formatDate value="${parsed}" type="date" pattern="dd/MM/yyyy"/></td>
									<td>${movimento.clienteFornecedor.pessoa.nome}</td>
									<td>${movimento.tipoMovimento}</td>
									<td>${movimento.qntProdutos}</td>
									<td><fmt:formatNumber value="${movimento.valor}" type="currency"/></td>
									<td>
										<button class="btn btn-outline-primary btn-sm" onclick="location.href='/movimento/visualizar/${movimento.codigo}'"><i class="fas fa-eye"></i></button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
	<c:import url="../utils/_footer.jsp"></c:import>
	