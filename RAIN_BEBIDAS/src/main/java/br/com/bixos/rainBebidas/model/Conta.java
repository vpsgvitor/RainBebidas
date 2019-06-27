package br.com.bixos.rainBebidas.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.format.annotation.DateTimeFormat;

import br.com.bixos.rainBebidas.model.util.EntidadePersistente;
import br.com.bixos.rainBebidas.model.util.StatusConta;
import br.com.bixos.rainBebidas.model.util.TipoConta;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Conta implements EntidadePersistente {

	private static final long serialVersionUID = 44673227196133112L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;

	private Double valor;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate dataLancamento;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate dataVencimento;

	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate dataBaixa;

	@Enumerated(EnumType.STRING)
	private TipoConta tipoConta;

	@Enumerated(EnumType.STRING)
	private StatusConta situacao;

	@OneToOne
	@JoinColumn(name = "codClienteFornecedor")
	private ClienteFornecedor clienteFornecedor;
}
