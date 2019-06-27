package br.com.bixos.rainBebidas.model;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class EstoqueVO {

	private Long compras;
	private Long vendas;
	private Double totalCompras;
	private Double totalVendas;

	public EstoqueVO(EstoqueDTO compras, EstoqueDTO vendas) {
		super();
		this.compras = compras.getQuantidade();
		this.vendas = vendas.getQuantidade();
		this.totalCompras = compras.getSomatorio();
		this.totalVendas = vendas.getSomatorio();
	}

}
