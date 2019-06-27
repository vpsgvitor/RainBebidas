<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
	<c:import url="../utils/_header.jsp"></c:import>
		<div class="container">
			<div class="justify-content-center titulo">
			
				<h3 class="display-4">Cliente / Fornecedor</h3>
			
			</div>
			<div class="row justify-content-md-center">
						
				<div class="col col-md-12 col-lg-9">
					<button type="button" class="btn btn-dark mb-4" onclick="location.href='/clienteFornecedor/novo'">Novo</button>
					<div class="table-responsive">
						<table class="table table-striped table-dark">
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
										<td>${not empty cliente.cnpj ? cliente.cnpj : cliente.pessoa.cpf}</td>
										<td>${cliente.pessoa.telefone}</td>
										<td class="text-center">
											<button class="btn btn-outline-primary btn-sm" onclick="location.href='/clienteFornecedor/editar/${cliente.codigo}'"><i class="fas fa-pencil-alt"></i></button>
											<button class="btn btn-outline-danger btn-sm" onclick="location.href='/clienteFornecedor/excluir/${cliente.codigo}'"><i class="far fa-trash-alt"></i></button>
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
	