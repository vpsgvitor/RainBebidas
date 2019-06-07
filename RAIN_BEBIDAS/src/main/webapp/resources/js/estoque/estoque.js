
var optionsProduto = {

  url: function(phrase) {
    return 'http://localhost:6060/produto/getListProduto';
  },

  getValue: function(element) {
    return element.nome;
  },
  
  list: {
	  onSelectItemEvent: function() {
		    var codigo = $("#ACProduto").getSelectedItemData().codigo;
		    var valor = $("#ACProduto").getSelectedItemData().valor;
			$('#IdProduto').val(codigo);
			$('#valor-prod').val(valor);
			$('#prod-qnt').val(1);
		}	
  },

  ajaxSettings: {
    dataType: "json",
    method: "GET",
    data: {
      dataType: "json"
    }
  },

  preparePostData: function(data) {
    data.phrase = $("#ACProduto").val();
    return data;
  },

  requestDelay: 400
};

$("#ACProduto").easyAutocomplete(optionsProduto);

