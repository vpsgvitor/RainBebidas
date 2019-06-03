package br.com.bixos.rainBebidas.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class EstoqueDTO {

	private Long compras;
	private Double totalCompras;
	private Long vendas;
	private Double totalVendas;

}
