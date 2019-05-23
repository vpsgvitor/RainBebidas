package br.com.bixos.rainBebidas.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;

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
public class Empresa implements EntidadePersistente {

	private static final long serialVersionUID = -7868872176619298767L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;

	private Estoque estoque;

	@OneToMany
	@JoinTable(name = "empresa_usuario", joinColumns = { @JoinColumn(name = "codempresa") }, inverseJoinColumns = {
			@JoinColumn(name = "codusuario") })
	private List<Usuario> usuarios;

	@OneToMany
	@JoinTable(name = "empresa_cliente_fornecedor", joinColumns = {
			@JoinColumn(name = "codempresa") }, inverseJoinColumns = { @JoinColumn(name = "codclientefornecedor") })
	private List<ClienteFornecedor> clientesFornecedores;

}
