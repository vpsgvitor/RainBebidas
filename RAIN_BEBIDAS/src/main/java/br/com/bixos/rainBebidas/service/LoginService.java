package br.com.bixos.rainBebidas.service;

import br.com.bixos.rainBebidas.model.Usuario;

public interface LoginService {

	boolean login(Usuario user);

	void logout();
}
