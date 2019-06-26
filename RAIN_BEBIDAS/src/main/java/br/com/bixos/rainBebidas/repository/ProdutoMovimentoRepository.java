package br.com.bixos.rainBebidas.repository;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.bixos.rainBebidas.model.ProdutoMovimento;

@Resource
public interface ProdutoMovimentoRepository extends JpaRepository<ProdutoMovimento, Long> {

	@Query("select pm from ProdutoMovimento pm join fetch pm.produto prod where pm.codigo = ?1")
	ProdutoMovimento findComplete(Long codProdutoMovimento);

}
