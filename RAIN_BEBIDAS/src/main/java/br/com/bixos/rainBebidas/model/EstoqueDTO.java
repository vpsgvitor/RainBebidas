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

	private Integer compras;
	private Double totalCompras;
	private Integer vendas;
	private Double totalVendas;

}
