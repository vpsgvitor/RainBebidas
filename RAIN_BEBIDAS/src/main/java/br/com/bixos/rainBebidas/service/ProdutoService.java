package br.com.bixos.rainBebidas.service;

import br.com.bixos.rainBebidas.exceptions.ProdutoSemQuantidadeException;
import br.com.bixos.rainBebidas.model.Produto;
import br.com.bixos.rainBebidas.model.ProdutoDTO;

public interface ProdutoService extends BasicCrud<Produto> {

	void ajustaQuantidadeProduto(ProdutoDTO produto) throws ProdutoSemQuantidadeException;

}
