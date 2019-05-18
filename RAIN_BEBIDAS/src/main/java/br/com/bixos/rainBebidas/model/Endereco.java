package br.com.bixos.rainBebidas.model;

import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@Embeddable
@NoArgsConstructor
@AllArgsConstructor
public class Endereco {

	private String estado;

	private String cidade;

	private String bairro;

	private String rua;

	private String cep;

	private Long numero;
}
