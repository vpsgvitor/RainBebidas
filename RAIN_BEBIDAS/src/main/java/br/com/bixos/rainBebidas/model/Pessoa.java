package br.com.bixos.rainBebidas.model;

import java.time.LocalDate;

import javax.persistence.Embedded;

import br.com.bixos.rainBebidas.model.util.EntidadePersistente;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Pessoa implements EntidadePersistente {

	private static final long serialVersionUID = -6176510855593185564L;

	private Long codigo;

	private String nome;

	private String cpf;

	private String telefone;

	private LocalDate dataNascimento;

	@Embedded
	private Endereco endereco;

}
