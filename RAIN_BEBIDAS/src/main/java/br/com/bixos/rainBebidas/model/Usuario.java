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
public class Usuario implements EntidadePersistente {

	private static final long serialVersionUID = 8962292495929538445L;

	private Long codigo;

	private Pessoa pessoa;

	private String email;

	private String senha;
}
