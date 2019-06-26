package br.com.bixos.rainBebidas.model;

import br.com.bixos.rainBebidas.model.util.TipoMovimento;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ProdutoDTO {

	private Long codProduto;
	private Double quantidade;
	private TipoMovimento tipoMovimento;

}
