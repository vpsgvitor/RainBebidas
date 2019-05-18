package br.com.bixos.rainBebidas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.model.Produto;
import br.com.bixos.rainBebidas.repository.ProdutoRepository;
import br.com.bixos.rainBebidas.service.ProdutoService;

@Service
public class ProdutoServiceImpl implements ProdutoService {

	@Autowired
	private ProdutoRepository repository;

	@Override
	public void salvar(Produto object) {
		repository.save(object);
	}

	@Override
	public void excluir(Long objectCod) {
		repository.delete(objectCod);
	}

	@Override
	public List<Produto> listar() {
		return repository.findAll();
	}

	@Override
	public Produto findOne(Long objectCod) {
		return repository.findOne(objectCod);
	}
}
