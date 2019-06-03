var options = {
	data : '${pageContext.request.contextPath }../../categorias/ACTipoProduto',

	getValue : "nome",

	list : {

		onSelectItemEvent : function() {
			var value = $("#ACTipoProduto").getSelectedItemData().codigo;

			$("#IdTipoProduto").val(value).trigger("change");
		}
	}
};

$("#ACTipoProduto").easyAutocomplete(options);


$.ajax({
    type: "GET",
    dataType: "json",
    url: "http://localhost:6060/categorias/ACTipoProduto", 
    success: function(data) {
    	 return data["responseText"];
    }
});