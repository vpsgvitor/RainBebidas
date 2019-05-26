package br.com.bixos.rainBebidas.repository;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.bixos.rainBebidas.model.Usuario;

@Resource
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

	@Query("select user from Usuario user where user.email = ?1 and user.senha = ?2")
	Usuario findByLoginSenha(String email, String senha);

}
