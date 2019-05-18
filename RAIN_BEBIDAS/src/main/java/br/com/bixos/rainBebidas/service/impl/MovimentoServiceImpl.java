package br.com.bixos.rainBebidas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.model.Movimento;
import br.com.bixos.rainBebidas.repository.MovimentoRepository;
import br.com.bixos.rainBebidas.service.MovimentoService;

@Service
public class MovimentoServiceImpl implements MovimentoService {

	@Autowired
	private MovimentoRepository repository;

	@Override
	public void salvar(Movimento object) {
		repository.save(object);

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
}
