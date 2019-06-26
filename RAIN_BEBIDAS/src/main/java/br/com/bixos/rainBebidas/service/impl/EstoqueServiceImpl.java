package br.com.bixos.rainBebidas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.model.EstoqueDTO;
import br.com.bixos.rainBebidas.model.Produto;
import br.com.bixos.rainBebidas.repository.EstoqueRepository;
import br.com.bixos.rainBebidas.service.EstoqueService;
import br.com.bixos.rainBebidas.service.ProdutoService;

@Service
public class EstoqueServiceImpl implements EstoqueService {

	@Autowired
	private EstoqueRepository repository;
	@Autowired
	private ProdutoService produtoService;

	@Override
	public List<Produto> produtos() {
		return produtoService.listar();
	}

	@Override
	public EstoqueDTO getInfo() {
		return !repository.findInfoEstoque().isEmpty() ? repository.findInfoEstoque().get(0) : null;
	}
}
