<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<c:import url="../utils/_header.jsp"></c:import>
	<script type="text/javascript">
		function populaModal(codigo, liquidada){
			$('#codigo-cconta').val(codigo);
			
			if(liquidada){
				$('#liquidada').removeClass('d-none');
				$('#nom-liquidada').addClass('d-none');
			} else {
				$('#liquidada').addClass('d-none');
				$('#nom-liquidada').removeClass('d-none');
			}
		}
	</script>
		<div class="container">
			<div class="row justify-content-center titulo">
			
				<h3 class="display-4" >Movimentações Financeiras</h3>
			
			</div>
			<div class="row justify-content-md-center">
						
				<div class="col-md-12 col-lg-9">
					<table class="table table-bordered table-hover table-striped">
						<thead>
							<tr>
								<th scope="col">Lançamento</th>
								<th scope="col">Cliente / Fornecedor</th>
								<th scope="col">Telefone</th>
								<th scope="col">Tipo</th>
								<th scope="col">Valor</th>
								<th scope="col">Vencimento</th>
								<th scope="col">Situação</th>
								<th scope="col">Data Liquidação</th>
								<th scope="col">#</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${contas}" var="conta">
								<tr>
									<td><fmt:parseDate  value="${conta.dataLancamento}" type="date" pattern="yyyy-MM-dd" var="parsed1" />
										<fmt:formatDate value="${parsed1}" type="date" pattern="dd/MM/yyyy"/></td>
									<td>${conta.clienteFornecedor.pessoa.nome}</td>
									<td>${conta.clienteFornecedor.pessoa.telefone}</td>
									<td>${conta.tipoConta}</td>
									<td><fmt:formatNumber value="${conta.valor}" type="currency"/></td>
									<td><fmt:parseDate  value="${conta.dataVencimento}" type="date" pattern="yyyy-MM-dd" var="parsed2" />
										<fmt:formatDate value="${parsed2}" type="date" pattern="dd/MM/yyyy"/></td>
									<td>${conta.situacao}</td>
										<fmt:parseDate  value="${conta.dataBaixa}" type="date" pattern="yyyy-MM-dd" var="parsed3" />
									<td><c:if test="${not empty conta.dataBaixa}"><fmt:formatDate value="${parsed3}" type="date" pattern="dd/MM/yyyy"/></c:if>
										<c:if test="${empty conta.dataBaixa}">Ainda não baixado</c:if></td>
									<td>
										<button class="btn btn-outline-success btn-sm" onclick="populaModal(${conta.codigo}, ${conta.situacao eq 'FINALIZADO'});" data-toggle="modal" data-target="#baixarConta">
										<i class="fas fa-money-bill-wave"></i></button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				<div class="modal fade" id="baixarConta" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
							  <h5 class="modal-title" id="exampleModalLabel">Liquidar Conta</h5>
							  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    <span aria-hidden="true">&times;</span>
							  </button>
							</div>
							<div class="modal-body">
							
								<div class="alert alert-success d-none" role="alert" id="liquidada">
									Esta conta já foi liquidada!
								</div>
								<form action="/financeiro/baixar" method="GET" class="col" id="nom-liquidada">
									<div class="row justify-content-md-center">
										Deseja baixar esta conta?
										<input type="hidden" class="form-control" id="codigo-cconta" name="codigo">
									</div>
									<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
									<button type="submit" class="btn btn-success float-right">Baixar</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<c:import url="../utils/_footer.jsp"></c:import>
	