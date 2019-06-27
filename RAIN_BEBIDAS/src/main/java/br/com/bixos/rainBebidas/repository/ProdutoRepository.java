package br.com.bixos.rainBebidas.repository;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.bixos.rainBebidas.model.Produto;

@Resource
public interface ProdutoRepository extends JpaRepository<Produto, Long> {

	@Query("select case when prod.codigo > 0 then true else false end from Movimento mov join mov.produtos prodsss join prodsss.produto prod where prod.codigo = ?1")
	Boolean existeMovimento(Long codigo);
}
