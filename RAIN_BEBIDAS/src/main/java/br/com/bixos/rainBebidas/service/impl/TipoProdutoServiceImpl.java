package br.com.bixos.rainBebidas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.model.TipoProduto;
import br.com.bixos.rainBebidas.repository.TipoProdutoRepository;
import br.com.bixos.rainBebidas.service.TipoProdutoService;

@Service
public class TipoProdutoServiceImpl implements TipoProdutoService {

	@Autowired
	private TipoProdutoRepository repository;

	@Override
	public void salvar(TipoProduto object) {
		repository.save(object);

	}

	@Override
	public void excluir(Long objectId) {
		repository.delete(objectId);
	}

	@Override
	public List<TipoProduto> listar() {
		return repository.findAll();
	}

	@Override
	public TipoProduto findOne(Long objectId) {
		return repository.findOne(objectId);
	}
}
