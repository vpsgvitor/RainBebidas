$(document).ready(function(){
	$('.date').mask('00/00/0000');
	$('.money').mask('000000000000000.00', {reverse: true});
});

var options = {

	url : function(phrase) {
		return 'http://localhost:6060/categorias/getListTipoProduto';
	},

	getValue : function(element) {
		return element.nome;
	},

	list : {
		onSelectItemEvent : function() {
			var value = $("#ACTipoProduto").getSelectedItemData().codigo;
			$('#IdTipoProduto').val(value);
		}
	},

	ajaxSettings : {
		dataType : "json",
		method : "GET",
		data : {
			dataType : "json"
		}
	},

	preparePostData : function(data) {
		data.phrase = $("#ACTipoProduto").val();
		return data;
	},

	requestDelay : 400
};

$("#ACTipoProduto").easyAutocomplete(options);

$("#button-submit").on("click", function() {
	$('#movimento').submit();
});
