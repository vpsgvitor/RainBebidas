package br.com.bixos.rainBebidas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.model.Conta;
import br.com.bixos.rainBebidas.repository.ContaRepository;
import br.com.bixos.rainBebidas.service.ContaService;

@Service
public class ContaServiceImpl implements ContaService {

	@Autowired
	private ContaRepository repository;

	@Override
	public void salvar(Conta object) {
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
}
