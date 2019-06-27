package br.com.bixos.rainBebidas.service;

import br.com.bixos.rainBebidas.exceptions.ProdutoSemQuantidadeException;
import br.com.bixos.rainBebidas.model.Movimento;

public interface MovimentoService extends BasicCrud<Movimento> {

	Movimento findOneComplete(Long codigo);

	void validaProdutos(Movimento movimento) throws ProdutoSemQuantidadeException;
}
