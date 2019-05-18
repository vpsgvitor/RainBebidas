package br.com.bixos.rainBebidas.model;

import java.util.List;

import br.com.bixos.rainBebidas.model.util.EntidadePersistente;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Empresa implements EntidadePersistente {

	private static final long serialVersionUID = -7868872176619298767L;

	private Long codigo;

	private Estoque estoque;

	private List<Usuario> usuarios;

	private List<ClienteFornecedor> clientesFornecedores;

}
