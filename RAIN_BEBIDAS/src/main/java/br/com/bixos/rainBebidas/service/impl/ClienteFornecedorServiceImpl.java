package br.com.bixos.rainBebidas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.model.ClienteFornecedor;
import br.com.bixos.rainBebidas.repository.ClienteFornecedorRepository;
import br.com.bixos.rainBebidas.service.ClienteFornecedorService;

@Service
public class ClienteFornecedorServiceImpl implements ClienteFornecedorService {

	@Autowired
	private ClienteFornecedorRepository repository;

	@Override
	public void salvar(ClienteFornecedor object) {
		repository.save(object);

	}

	@Override
	public void excluir(Long objectId) {
		repository.delete(objectId);
	}

	@Override
	public List<ClienteFornecedor> listar() {
		return repository.findAll();
	}

	@Override
	public ClienteFornecedor findOne(Long objectId) {
		return repository.findOne(objectId);
	}
}
