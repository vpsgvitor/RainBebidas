<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value = "pt_BR"/>

	<c:import url="../utils/_header.jsp"></c:import>
		<div class="container">
			<div class="row justify-content-center titulo">
			
				<h3 class="display-4">Estoque</h3>
			
			</div>
			<div class="row justify-content-md-center">
						
				<div class="col-md-12 col-lg-9">
					<div class="card-deck">
						<div class="card border-primary m-4">
							<img class="card-img-top" src="/resources/img/mov.png" alt="Compras" height="200">
							<hr class="my-2"/>
							<div class="card-body text-center">
								<h5 class="card-title">Compras</h5>
								<p class="card-text">${not empty infos.compras ? infos.compras : 0} neste mes</p>
								<p class="card-text">Total&nbsp;<fmt:formatNumber value="${not empty infos.totalCompras ? infos.totalCompras : 0}" type="currency"/></p>
							</div>
							<div class="card-footer text-center">
								<button type="button" class="btn btn-primary" onclick="location.href='/movimento/novo/1'">Nova compra</button>
							</div>
						</div>
						<div class="card border-success m-4">
							<img class="card-img-top" src="/resources/img/mov.png" alt="Vendas" height="200">
							<hr class="my-2"/>
							<div class="card-body text-center">
								<h5 class="card-title">Vendas</h5>
								<p class="card-text">${not empty infos.vendas ? infos.vendas : 0} neste mes</p>
								<p class="card-text">Total&nbsp;<fmt:formatNumber value="${not empty infos.totalVendas ? infos.totalVendas : 0}" type="currency"/></p>
							</div>
							<div class="card-footer text-center">
								<button type="button" class="btn btn-success" onclick="location.href='/movimento/novo/2'">Nova venda</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<c:import url="../utils/_footer.jsp"></c:import>
	