package br.com.bixos.rainBebidas.model;

import javax.persistence.CascadeType;
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
public class ClienteFornecedor implements EntidadePersistente {

	private static final long serialVersionUID = -2034776108610193505L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "codpessoa")
	private Pessoa pessoa = new Pessoa();

	private String cnpj;

}
