<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:import url="../utils/_header.jsp"></c:import>
<div class="container">
	<div class="row justify-content-center titulo">
		<h3 class="display-4">Produtos</h3>
	</div>
	<c:if test="${not empty error}">
			<div class="row justify-content-center col-md-12 col-lg-9">
				<div class="alert alert-danger" role="alert">
				  <c:out value="${error}"></c:out>
				</div>
			</div>
		</c:if>
	<div class="row justify-content-center titulo">
		<div class="col-md-12 col-lg-9">
			<button type="button" class="btn btn-dark mb-4" onclick="location.href='/produto/novo'">Novo</button>
			<button type="button" class="btn btn-dark mb-4" onclick="location.href='/categorias'">Categorias de Produtos</button>
		</div>
	</div>
	<div class="row justify-content-md-center">
		<div class="col-md-12 col-lg-9 table-responsive">
			<table class="table table-bordered table-hover table-striped table-dark">
				<thead>
					<tr>
						<th class="text-center">Nome</th>
						<th class="text-center">Categoria</th>
						<th class="text-center">Quantidade</th>
						<th class="text-center">Valor</th>
						<th class="text-center">#</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${produtos}" var="produto">
						<tr>
							<td>${produto.nome}</td>
							<td>${produto.tipoProduto.nome}</td>
							<td class="text-center">${produto.quantidade}</td>
							<td class="text-center"><fmt:formatNumber value="${produto.valor}" type="currency"/></td>
							<td class="text-center">
								<button class="btn btn-outline-primary btn-sm" onclick="location.href='/produto/editar/${produto.codigo}'">
									<i class="fas fa-pencil-alt"></i>
								</button>
								<button class="btn btn-outline-danger btn-sm" onclick="location.href='/produto/excluir/${produto.codigo}'">
									<i class="far fa-trash-alt"></i>
								</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<c:import url="../utils/_footer.jsp"></c:import>