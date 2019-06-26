package br.com.bixos.rainBebidas.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.springframework.format.annotation.DateTimeFormat;

import br.com.bixos.rainBebidas.model.util.EntidadePersistente;
import br.com.bixos.rainBebidas.model.util.TipoMovimento;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Movimento implements EntidadePersistente {

	private static final long serialVersionUID = 5662508184323261145L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;

	private Double valor;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate data;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate dataVencimento;

	@Enumerated(EnumType.STRING)
	private TipoMovimento tipoMovimento;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "movimento")
	private List<ProdutoMovimento> produtos = new ArrayList<>();

	@OneToOne
	@JoinColumn(name = "codClienteFornecedor")
	private ClienteFornecedor clienteFornecedor = new ClienteFornecedor();
}
