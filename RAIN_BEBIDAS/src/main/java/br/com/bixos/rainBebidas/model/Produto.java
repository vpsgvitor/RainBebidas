package br.com.bixos.rainBebidas.model;

import br.com.bixos.rainBebidas.model.util.EntidadePersistente;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Produto implements EntidadePersistente {

	private static final long serialVersionUID = -3471454003921284534L;

	private Long codigo;

	private String nome;

	private Double preco;

	private Double quantidade;

	private TipoProduto tipoProduto;

}
