<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
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
								<th scope="col">Cliente Fornecedor</th>
								<th scope="col">CPF/CNPJ</th>
								<th scope="col">Tipo Movimento</th>
								<th scope="col">Valor</th>
								<th scope="col">#</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${movimentos}" var="movimento">
								<tr>
									<td>${movimento.clienteFornecedor.nome}</td>
									<td>${not empty movimento.clienteFornecedor.cnpj ? movimento.clienteFornecedor.cnpj : movimento.clienteFornecedor.pessoa.cpf}</td>
									<td>${movimento.tipoMovimento}</td>
									<td>${movimento.valor}</td>
									<td>
										<button class="btn btn-outline-primary btn-sm"><i class="fas fa-eye"></i></button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
	<c:import url="../utils/_footer.jsp"></c:import>
	