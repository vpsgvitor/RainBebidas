package br.com.bixos.rainBebidas.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import br.com.bixos.rainBebidas.model.util.EntidadePersistente;
import br.com.bixos.rainBebidas.model.util.TipoMovimento;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Movimento implements EntidadePersistente {

	private static final long serialVersionUID = 5662508184323261145L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;

	private Double valor;

	private Double quantidade;

	private TipoMovimento tipoMovimento;

	private List<Produto> produtos;

	private ClienteFornecedor clienteFornecedor;
}
