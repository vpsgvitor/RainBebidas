package br.com.bixos.rainBebidas.model;

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
public class MovimentoProduto implements EntidadePersistente {

	private static final long serialVersionUID = 4722246062338104023L;

	@Id
	private Long codigo;

	private Movimento movimento;

	private MovimentoProduto movimentoProduto;

}
