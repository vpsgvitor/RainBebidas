package br.com.bixos.rainBebidas.service.impl;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.model.Conta;
import br.com.bixos.rainBebidas.model.Movimento;
import br.com.bixos.rainBebidas.model.util.StatusConta;
import br.com.bixos.rainBebidas.model.util.TipoConta;
import br.com.bixos.rainBebidas.model.util.TipoMovimento;
import br.com.bixos.rainBebidas.repository.ContaRepository;
import br.com.bixos.rainBebidas.service.ContaService;

@Service
public class ContaServiceImpl implements ContaService {

	@Autowired
	private ContaRepository repository;

	@Override
	public void salvar(Conta object) {
		if (object.getDataLancamento() == null) {
			object.setDataLancamento(LocalDate.now());
		}
		repository.save(object);
	}

	@Override
	public void excluir(Long objectId) {
		repository.delete(objectId);
	}

	@Override
	public List<Conta> listar() {
		return repository.findAll();
	}

	@Override
	public Conta findOne(Long objectId) {
		return repository.findOne(objectId);
	}

	@Override
	public void novaContaMovimento(Movimento movimento) {
		Conta conta = new Conta();
		conta.setClienteFornecedor(movimento.getClienteFornecedor());
		boolean isEntrada = movimento.getTipoMovimento().equals(TipoMovimento.ENTRADA);
		conta.setTipoConta(isEntrada ? TipoConta.PAGAR : TipoConta.RECEBER);
		conta.setValor(movimento.getValor());
		conta.setSituacao(StatusConta.PENDENTE);
		conta.setDataVencimento(movimento.getDataVencimento());
		this.salvar(conta);
	}

	@Override
	public void baixar(Long codigo) {
		Conta conta = repository.findOne(codigo);
		conta.setDataBaixa(LocalDate.now());
		conta.setSituacao(StatusConta.FINALIZADO);
		this.salvar(conta);
	}
}
