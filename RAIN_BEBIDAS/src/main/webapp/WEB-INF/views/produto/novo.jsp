<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<c:import url="../utils/_header.jsp"></c:import>

<div class="container">
	<div class="row justify-content-center titulo">
		<h3 class="display-4">Adicionar Novo Produto</h3>
	</div>
	<div class="row justify-content-md-center">
		<div class="col-md-12 col-lg-9">
			<form action="/produto/salvar" method="POST" class="col">

				<div class="form-group">
					<input type="hidden" class="form-control" name="codigo" value="${produto.codigo}">
					<input type="text" class="form-control" name="nome" placeholder="Nome" value="${produto.nome}">
				</div>

				<div class="form-group">
					<input type="hidden" name="tipoProduto.codigo" id="IdTipoProduto" value="${produto.tipoProduto.codigo}"> 
					<input type="text" class="form-control" id="ACTipoProduto" name="tipoProduto.nome" placeholder="Categoria" value="${produto.tipoProduto.nome}">
				</div>

				<div class="form-group">
					<input class="form-control" name="valor" placeholder="Valor" value="${produto.valor}">
				</div>

				<div class="form-group">
					<input type="number" class="form-control" name="quantidade" placeholder="Quantidade" value="${produto.quantidade}">
				</div>

				<button type="submit" class="btn btn-success float-right">Salvar</button>
			</form>
		</div>
	</div>
</div>
<c:import url="../utils/_footer.jsp"></c:import>