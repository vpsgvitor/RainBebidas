package br.com.bixos.rainBebidas.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import br.com.bixos.rainBebidas.model.util.EntidadePersistente;
import br.com.bixos.rainBebidas.model.util.StatusConta;
import br.com.bixos.rainBebidas.model.util.TipoConta;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Conta implements EntidadePersistente {

	private static final long serialVersionUID = 44673227196133112L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;

	private Double valor;

	private TipoConta tipoConta;

	private StatusConta situacao;

	private ClienteFornecedor clienteFornecedor;
}
