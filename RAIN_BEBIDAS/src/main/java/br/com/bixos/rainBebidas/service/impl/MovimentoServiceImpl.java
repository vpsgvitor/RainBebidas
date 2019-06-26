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
import br.com.bixos.rainBebidas.repository.ProdutoMovimentoRepository;
import br.com.bixos.rainBebidas.service.ContaService;
import br.com.bixos.rainBebidas.service.MovimentoService;
import br.com.bixos.rainBebidas.service.ProdutoService;

@Service
public class MovimentoServiceImpl implements MovimentoService {

	@Autowired
	private MovimentoRepository repository;
	@Autowired
	private ProdutoMovimentoRepository prodMovRepository;
	@Autowired
	private ContaService contaService;
	@Autowired
	private ProdutoService produtoService;

	@Override
	public void salvar(Movimento object) throws ProdutoSemQuantidadeException {
		Movimento toSave;
		toSave = constroiMovimento(object);
		repository.save(toSave);

	}

	private Movimento constroiMovimento(Movimento movimento) throws ProdutoSemQuantidadeException {
		Double valor = 0.0;
		if (movimento.getData() == null) {
			movimento.setData(LocalDate.now());
		}
		List<ProdutoMovimento> list = limpaLista(movimento.getProdutos());
		List<ProdutoMovimento> newlist = new ArrayList<>();
		for (ProdutoMovimento prodmov : list) {
			if (validaProdutoMovimento(prodmov)) {
				ProdutoMovimento newProd = new ProdutoMovimento();
				valor += prodmov.getQuantidade() * prodmov.getValor();
				newProd = prodMovRepository.findComplete(prodmov.getCodigo());
				newlist.add(newProd);
				produtoService.ajustaQuantidadeProduto(new ProdutoDTO(prodmov.getProduto().getCodigo(),
						prodmov.getQuantidade(), movimento.getTipoMovimento()));
			}
		}
		movimento.setProdutos(newlist);
		movimento.setValor(valor);
		contaService.novaContaMovimento(movimento);
		return movimento;
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
