package br.com.bixos.rainBebidas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.exceptions.ProdutoSemQuantidadeException;
import br.com.bixos.rainBebidas.model.Produto;
import br.com.bixos.rainBebidas.model.ProdutoDTO;
import br.com.bixos.rainBebidas.model.util.TipoMovimento;
import br.com.bixos.rainBebidas.repository.ProdutoRepository;
import br.com.bixos.rainBebidas.service.ProdutoService;

@Service
public class ProdutoServiceImpl implements ProdutoService {

	@Autowired
	private ProdutoRepository repository;

	@Override
	public void salvar(Produto object) {
		if (object.getQuantidade() == null) {
			object.setQuantidade(0.0);
		}
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

	public boolean existeMovimento(Long codigo) {
		Boolean existeMovimento = repository.existeMovimento(codigo);
		return existeMovimento != null ? existeMovimento : false;
	}

	@Override
	public void ajustaQuantidadeProduto(ProdutoDTO produto) throws ProdutoSemQuantidadeException {
		Produto produtoAchado = repository.findOne(produto.getCodProduto());
		if (produto.getTipoMovimento().equals(TipoMovimento.ENTRADA)) {
			produtoAchado.setQuantidade(produtoAchado.getQuantidade() + produto.getQuantidade());
		} else {
			if (produtoAchado.getQuantidade().equals(new Double(0))) {
				throw new ProdutoSemQuantidadeException("Um dos produtos não tem quantidade suficiente para venda.");
			}
			if (produtoAchado.getQuantidade() < produto.getQuantidade()) {
				throw new ProdutoSemQuantidadeException("Um dos produtos não tem quantidade suficiente para venda.");
			}
			produtoAchado.setQuantidade(produtoAchado.getQuantidade() - produto.getQuantidade());
		}

	}
}
