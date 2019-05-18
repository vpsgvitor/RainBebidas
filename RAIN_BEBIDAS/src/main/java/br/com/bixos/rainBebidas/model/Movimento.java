package br.com.bixos.rainBebidas.model;

import br.com.bixos.rainBebidas.model.util.EntidadePersistente;
import br.com.bixos.rainBebidas.model.util.TipoMovimento;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Movimento implements EntidadePersistente {

	private static final long serialVersionUID = 5662508184323261145L;

	private Long codigo;

	private Double valor;

	private Double quantidade;

	private TipoMovimento tipoMovimento;

	private MovimentoProduto movimentoProduto;

	private ClienteFornecedor clienteFornecedor;
}
