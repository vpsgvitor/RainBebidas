package br.com.bixos.rainBebidas.service;

import java.util.List;

import br.com.bixos.rainBebidas.exceptions.ProdutoSemQuantidadeException;
import br.com.bixos.rainBebidas.model.Movimento;

public interface MovimentoService {

	void salvar(Movimento object) throws ProdutoSemQuantidadeException;

	void excluir(Long objectId);

	List<Movimento> listar();

	Movimento findOne(Long objectId);

	Movimento findOneComplete(Long codigo);
}
