package br.com.bixos.rainBebidas.service.impl;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.exceptions.ProdutoSemQuantidadeException;
import br.com.bixos.rainBebidas.model.Movimento;
import br.com.bixos.rainBebidas.model.ProdutoDTO;
import br.com.bixos.rainBebidas.model.ProdutoMovimento;
import br.com.bixos.rainBebidas.repository.MovimentoRepository;
import br.com.bixos.rainBebidas.service.ContaService;
import br.com.bixos.rainBebidas.service.MovimentoService;
import br.com.bixos.rainBebidas.service.ProdutoService;

@Service
public class MovimentoServiceImpl implements MovimentoService {

	@Autowired
	private MovimentoRepository repository;
	@Autowired
	private ContaService contaService;
	@Autowired
	private ProdutoService produtoService;

	@Override
	public void salvar(Movimento object) {
		Movimento toSave;
		toSave = constroiMovimento(object);
		contaService.novaContaMovimento(toSave);
		repository.save(toSave);

	}

	private Movimento constroiMovimento(Movimento movimento) {
		Double valor = 0.0;
		if (movimento.getData() == null) {
			movimento.setData(LocalDate.now());
		}
		List<ProdutoMovimento> list = limpaLista(movimento.getProdutos());
		List<ProdutoMovimento> newlist = new ArrayList<>();
		for (ProdutoMovimento prodmov : list) {
			if (validaProdutoMovimento(prodmov)) {
				double valorTotal = prodmov.getQuantidade() * prodmov.getValor();
				valor += valorTotal;
				prodmov.setMovimento(movimento);
				prodmov.setProduto(produtoService.findOne(prodmov.getProduto().getCodigo()));
				prodmov.setValorTotal(valorTotal);
				newlist.add(prodmov);
			}
		}
		movimento.setQntProdutos(newlist.size());
		movimento.setProdutos(newlist);
		movimento.setValor(valor);
		return movimento;
	}

	@Override
	public void validaProdutos(Movimento movimento) throws ProdutoSemQuantidadeException {
		if (movimento.getProdutos().isEmpty()) {
			throw new ProdutoSemQuantidadeException("Nenhum produto adicionado no movimento");
		} else {
			for (ProdutoMovimento prod : movimento.getProdutos()) {
				if (validaProdutoMovimento(prod)) {
					produtoService.ajustaQuantidadeProduto(new ProdutoDTO(prod.getProduto().getCodigo(),
							prod.getQuantidade(), movimento.getTipoMovimento()));
				}
			}
		}

	}

	private List<ProdutoMovimento> limpaLista(List<ProdutoMovimento> produtos) {
		List<ProdutoMovimento> newList = new ArrayList<>();
		for (ProdutoMovimento prodmov : produtos) {
			if (validaProdutoMovimento(prodmov)) {
				newList.add(prodmov);
			}
		}
		return newList;
	}

	private boolean validaProdutoMovimento(ProdutoMovimento prodMov) {
		try {
			boolean temQnt = prodMov.getQuantidade() != null;
			boolean temValor = prodMov.getValor() != null;
			boolean temProduto = prodMov.getProduto().getCodigo() != null;
			return temQnt && temValor && temProduto;
		} catch (NullPointerException e) {
			return false;
		}
	}

	@Override
	public void excluir(Long objectId) {
		repository.delete(objectId);
	}

	@Override
	public List<Movimento> listar() {
		return repository.findAll();
	}

	@Override
	public Movimento findOne(Long objectId) {
		return repository.findOne(objectId);
	}

	@Override
	public Movimento findOneComplete(Long codigo) {
		return repository.findOneComplete(codigo);
	}
}
