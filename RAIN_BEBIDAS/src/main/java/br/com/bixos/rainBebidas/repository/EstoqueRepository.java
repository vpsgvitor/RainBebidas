package br.com.bixos.rainBebidas.repository;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.bixos.rainBebidas.model.Estoque;
import br.com.bixos.rainBebidas.model.Produto;

@Resource
public interface EstoqueRepository extends JpaRepository<Estoque, Long> {

	@Query("select prod from Produto prod where prod.quantidade > 0")
	List<Produto> produtosEmEstoque();

	@Query("select prod from Produto prod where prod.quantidade <= 0")
	List<Produto> produtosEmFalta();

}
