
var optionsCliente = {

  url: function(phrase) {
    return 'http://localhost:6060/clienteFornecedor/getListCliente';
  },

  getValue: function(element) {
    return element.pessoa.nome;
  },
  
  list: {
	  onSelectItemEvent: function() {
		    var codigo = $("#ACCliente").getSelectedItemData().codigo;
			$('#idCliente').val(codigo);
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
    data.phrase = $("#ACCliente").val();
    return data;
  },

  requestDelay: 400
};

$("#ACCliente").easyAutocomplete(optionsCliente);
