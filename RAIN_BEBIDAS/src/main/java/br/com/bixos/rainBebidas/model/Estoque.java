package br.com.bixos.rainBebidas.model;

import java.util.List;

import javax.persistence.Entity;

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
public class Estoque implements EntidadePersistente {

	private static final long serialVersionUID = 261356828521514326L;

	@Id
	private Long codigo;

	private List<Produto> produtos;
}
