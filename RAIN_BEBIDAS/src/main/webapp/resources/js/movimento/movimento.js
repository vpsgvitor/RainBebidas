
$(function () {
	$('#addProduct').on('click', function() {
		var codProduto = $('#IdProduto').val();
		var nomeProduto = $('#ACProduto').val();
		var valProd = $('#valor-prod').val();
		var prodQnt = $('#prod-qnt').val();
		var valorTotal = valProd * prodQnt;  
		const $body = $('#corpo-tabela');
	
		var partial =  `<tr><td>
			<input id="prod-codigo" name="produtos[].produto.codigo" class="form-control" value="` + codProduto + `" type="hidden">
			<input id="prod-nome" name="produtos[].produto.nome" class="form-control disabled" value="` + nomeProduto + `" type="text">
		</td>
		<td><input id="prod-quantidade" name="produtos[].quantidade" class="form-control" value="` + prodQnt + `" type="text"></td>
		<td><input id="prod-valor" name="produtos[].produto.valor" class="form-control" value="` + valProd + `" type="text"></td>
		<td>` + valorTotal + `</td>
		<td>
			<button class="btn btn-outline-danger btn-sm  excluir-prod" type="button" ><i class="far fa-trash-alt"></i></button>
		</td>
		</tr>`;	
		
		$body.append(partial);
		zeraTudo();
	});
	
	$('.excluir-prod').on('click', function() {
		$('#corpo-tabela .excluir-prod').parents("tr").remove();
	});
	
	function zeraTudo(){
		$('#IdProduto').val("");
		$('#ACProduto').val("");
		$('#valor-prod').val("");
		$('#prod-qnt').val("");
	}
});