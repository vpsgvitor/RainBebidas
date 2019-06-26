package br.com.bixos.rainBebidas.service;

import br.com.bixos.rainBebidas.model.Conta;
import br.com.bixos.rainBebidas.model.Movimento;

public interface ContaService extends BasicCrud<Conta> {

	void novaContaMovimento(Movimento movimento);

	void baixar(Long codigo);

}
