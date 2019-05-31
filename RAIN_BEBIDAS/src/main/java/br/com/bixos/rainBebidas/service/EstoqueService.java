package br.com.bixos.rainBebidas.service;

import java.util.List;

import br.com.bixos.rainBebidas.model.EstoqueDTO;
import br.com.bixos.rainBebidas.model.Produto;

public interface EstoqueService {

	List<Produto> produtos();

	EstoqueDTO getInfo();
}
