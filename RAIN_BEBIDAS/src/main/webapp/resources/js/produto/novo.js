//var options = {
//	data : '${pageContext.request.contextPath }/categorias/getList',
//
//	getValue : "nome",
//
//	list : {
//
//		onSelectItemEvent : function() {
//			var value = $("#ACTipoProduto").getSelectedItemData().codigo;
//
//			$("#IdTipoProduto").val(value).trigger("change");
//		}
//	}
//};
//
//$("#ACTipoProduto").easyAutocomplete(options);
//
////
////$.ajax({
////    type: "GET",
////    dataType: "json",
////    url: "http://localhost:6060/categorias/ACTipoProduto", 
////    success: function(data) {
////    	 return data["responseText"];
////    }
////});

var options = {

  url: function(phrase) {
    return 'http://localhost:6060/categorias/getList';
  },

  getValue: function(element) {
    return element.nome;
  },
  
  list: {
	  onSelectItemEvent: function() {
		    var value = $("#ACTipoProduto").getSelectedItemData().codigo;
			$('#IdTipoProduto').val(value);
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
    data.phrase = $("#ACTipoProduto").val();
    return data;
  },

  requestDelay: 400
};

$("#ACTipoProduto").easyAutocomplete(options);

