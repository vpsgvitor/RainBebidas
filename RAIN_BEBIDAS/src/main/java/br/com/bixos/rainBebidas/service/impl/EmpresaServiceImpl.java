package br.com.bixos.rainBebidas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.model.Empresa;
import br.com.bixos.rainBebidas.repository.EmpresaRepository;
import br.com.bixos.rainBebidas.service.EmpresaService;

@Service
public class EmpresaServiceImpl implements EmpresaService {

	@Autowired
	private EmpresaRepository repository;

	@Override
	public void salvar(Empresa object) {
		repository.save(object);

	}

	@Override
	public void excluir(Long objectId) {
		repository.delete(objectId);
	}

	@Override
	public List<Empresa> listar() {
		return repository.findAll();
	}

	@Override
	public Empresa findOne(Long objectId) {
		return repository.findOne(objectId);
	}
}
