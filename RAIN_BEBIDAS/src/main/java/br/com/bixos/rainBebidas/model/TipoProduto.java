package br.com.bixos.rainBebidas.model;

import org.springframework.data.annotation.Id;

import br.com.bixos.rainBebidas.model.util.EntidadePersistente;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class TipoProduto implements EntidadePersistente {

	private static final long serialVersionUID = -8395703233608314979L;

	@Id
	private Long codigo;

	private String nome;

}
