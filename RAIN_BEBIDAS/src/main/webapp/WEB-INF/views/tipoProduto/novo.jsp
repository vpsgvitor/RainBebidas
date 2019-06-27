<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:import url="../utils/_header.jsp"></c:import>

<div class="container">
	<div class="row justify-content-center">
		<h3 class="display-4 m-5">Nova categoria de produtos</h3>
	</div>
	<div class="row justify-content-center">
		<div class="col-md-12 col-lg-9">
			<form:form action="/categorias/salvar" method="POST" class="col" modelAttribute="tipoProduto">

				<div class="form-group">
					<form:hidden class="form-control" path="codigo" name="codigo" value="${tipoProduto.codigo}" />
					<form:input type="text" class="form-control" required="true" path="nome" name="nome" placeholder="Nome" value="${tipoProduto.nome}" />
				</div>

				<button type="submit" class="btn btn-dark float-right">Salvar</button>
			</form:form>
		</div>
	</div>
</div>

<c:import url="../utils/_footer.jsp"></c:import>