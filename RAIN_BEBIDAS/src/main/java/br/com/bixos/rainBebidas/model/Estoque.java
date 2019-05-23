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
public class Estoque implements EntidadePersistente {

	private static final long serialVersionUID = 261356828521514326L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;

	@OneToMany
	@JoinTable(name = "estoque_produto", joinColumns = { @JoinColumn(name = "codestoque") }, inverseJoinColumns = {
			@JoinColumn(name = "codproduto") })
	private List<Produto> produtos;
}
