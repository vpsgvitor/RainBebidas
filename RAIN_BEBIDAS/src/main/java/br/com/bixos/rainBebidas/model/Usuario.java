package br.com.bixos.rainBebidas.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import org.springframework.data.annotation.Id;

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
public class Usuario implements EntidadePersistente {

	private static final long serialVersionUID = 8962292495929538445L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;

	private Pessoa pessoa;

	private String email;

	private String senha;
}
