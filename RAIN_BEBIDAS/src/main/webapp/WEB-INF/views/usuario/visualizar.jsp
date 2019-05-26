<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
	<c:import url="../utils/_header.jsp"></c:import>
		<div class="container">
			<div class="row justify-content-center titulo">
			
				<h3 class="display-4" >Usuarios</h3>
			
			</div>
			<div class="row justify-content-md-center">
				<div class="col-md-12 col-lg-9">
					<button type="button" class="btn btn-primary mb-4" data-toggle="modal" data-target="#novoUsuario">Novo</button>
					<table class="table table-bordered table-hover table-striped">
						<thead>
							<tr>
								<th scope="col">Nome</th>
								<th scope="col">Email</th>
								<th scope="col">#</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${usuarios}" var="usuario">
								<tr>
									<td>${usuario.nome}</td>
									<td>${usuario.email}</td>
									<td>
										<button class="btn btn-outline-primary btn-sm"><i class="fas fa-pencil-alt"></i></button>
										<button class="btn btn-outline-danger btn-sm" onclick="location.href='/usuario/excluir/${usuario.codigo}'"><i class="far fa-trash-alt"></i></button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		<c:import url="_modalUsuario.jsp"></c:import>
		<c:import url="../utils/_footer.jsp"></c:import>