package br.com.bixos.rainBebidas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.model.Usuario;
import br.com.bixos.rainBebidas.repository.UsuarioRepository;
import br.com.bixos.rainBebidas.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	private UsuarioRepository repository;

	@Override
	public void salvar(Usuario object) {
		repository.save(object);

	}

	@Override
	public void excluir(Long objectId) {
		repository.delete(objectId);
	}

	@Override
	public List<Usuario> listar() {
		return repository.findAll();
	}

	@Override
	public Usuario findOne(Long objectId) {
		return repository.findOne(objectId);
	}
}
