package br.com.bixos.rainBebidas.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bixos.rainBebidas.model.Usuario;
import br.com.bixos.rainBebidas.repository.UsuarioRepository;
import br.com.bixos.rainBebidas.service.LoginService;
import br.com.bixos.rainBebidas.utils.Logado;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private UsuarioRepository userRepository;

	@Override
	public boolean login(Usuario user) {
		Usuario userAchado = userRepository.findByLoginSenha(user.getEmail(), user.getSenha());
		if (userAchado != null) {
			Logado.user = userAchado;
			Logado.isLogado = true;
			return true;
		}
		return false;
	}

	@Override
	public void logout() {
		Logado.user = null;
		Logado.isLogado = false;
	}

}
