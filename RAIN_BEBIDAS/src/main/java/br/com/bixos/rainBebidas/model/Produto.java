package br.com.bixos.rainBebidas.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import br.com.bixos.rainBebidas.model.util.EntidadePersistente;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Produto implements EntidadePersistente {

	private static final long serialVersionUID = -3471454003921284534L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;

	private String nome;

	private Double valor;

	private Double quantidade;

	@OneToOne
	@JoinColumn(name = "codTipoProduto")
	private TipoProduto tipoProduto;

}
