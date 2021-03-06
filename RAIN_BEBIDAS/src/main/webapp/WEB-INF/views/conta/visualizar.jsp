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
			<div class="justify-content-center titulo">
			
				<h3 class="display-4" >Movimentos Financeiros</h3>
			
			</div>
			<div class="row justify-content-md-center">
						
				<div class="col-md-12 col-lg-12 table-responsive">
					<table class="table table-bordered table-hover table-striped table-dark">
						<thead>
							<tr>
								<th class="text-center">Lan�amento</th>
								<th class="text-center">Cliente / Fornecedor</th>
								<th class="text-center">Telefone</th>
								<th class="text-center">Tipo</th>
								<th class="text-center">Valor</th>
								<th class="text-center">Vencimento</th>
								<th class="text-center">Data Liquida��o</th>
								<th class="text-center">Situa��o</th>
								<th class="text-center">#</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${contas}" var="conta">
								<tr>
									<td class="text-center"><fmt:parseDate  value="${conta.dataLancamento}" type="date" pattern="yyyy-MM-dd" var="parsed1" />
										<fmt:formatDate value="${parsed1}" type="date" pattern="dd/MM/yyyy"/></td>
									<td>${conta.clienteFornecedor.pessoa.nome}</td>
									<td class="text-center">${conta.clienteFornecedor.pessoa.telefone}</td>
									<td class="text-center">${conta.tipoConta}</td>
									<td class="text-center"><fmt:formatNumber value="${conta.valor}" type="currency"/></td>
									<td class="text-center"><fmt:parseDate  value="${conta.dataVencimento}" type="date" pattern="yyyy-MM-dd" var="parsed2" />
										<fmt:formatDate value="${parsed2}" type="date" pattern="dd/MM/yyyy"/></td>
										<fmt:parseDate  value="${conta.dataBaixa}" type="date" pattern="yyyy-MM-dd" var="parsed3" />
									<td class="text-center"><c:if test="${not empty conta.dataBaixa}"><fmt:formatDate value="${parsed3}" type="date" pattern="dd/MM/yyyy"/></c:if>
										<c:if test="${empty conta.dataBaixa}">Ainda n�o baixado</c:if></td>
									<td class="text-center">${conta.situacao}</td>
									<td class="text-center">
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
									Esta conta j� foi liquidada!
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
	