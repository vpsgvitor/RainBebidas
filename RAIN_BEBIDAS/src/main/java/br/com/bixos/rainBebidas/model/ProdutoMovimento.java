package br.com.bixos.rainBebidas.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
public class ProdutoMovimento implements EntidadePersistente {

	private static final long serialVersionUID = 733431854143304640L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;

	private Double quantidade;

	private Double valor;

	private Double valorTotal;

	@ManyToOne(fetch = FetchType.EAGER)
	private Movimento movimento;

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "codProduto")
	private Produto produto;
}
