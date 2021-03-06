<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
	<c:import url="../utils/_header.jsp"></c:import>
		<div class="container">
			<div class="text-center titulo">
			
				<h3 class="display-4">Categorias de Produtos</h3>
			
			</div>
			<div class="row justify-content-md-center">
						
				<div class="col-md-12 col-lg-9">
					<button type="button" class="btn btn-dark mb-4" onclick="location.href='/categorias/novo'">Novo</button>
					<div class="table-responsive">
						<table class="table table-bordered table-hover table-striped table-dark">
						<thead>
							<tr>
								<th scope="col">Nome</th>
								<th scope="col">#</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${categorias}" var="categoria">
								<tr>
									<td>${categoria.nome}</td>
									<td>
										<button class="btn btn-outline-primary btn-sm" onclick="location.href='/categorias/editar/${categoria.codigo}'"><i class="fas fa-pencil-alt"></i></button>
										<button class="btn btn-outline-danger btn-sm" onclick="location.href='/categorias/excluir/${categoria.codigo}'"><i class="far fa-trash-alt"></i></button>
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
	