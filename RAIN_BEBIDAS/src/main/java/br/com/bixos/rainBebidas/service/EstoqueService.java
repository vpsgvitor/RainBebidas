package br.com.bixos.rainBebidas.service;

import java.util.List;

import br.com.bixos.rainBebidas.model.EstoqueVO;
import br.com.bixos.rainBebidas.model.Produto;

public interface EstoqueService {

	List<Produto> produtos();

	EstoqueVO getInfo();
}
