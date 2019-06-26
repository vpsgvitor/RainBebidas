package br.com.bixos.rainBebidas.repository;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.bixos.rainBebidas.model.Movimento;

@Resource
public interface MovimentoRepository extends JpaRepository<Movimento, Long> {

	@Query("select mov from Movimento mov left join fetch mov.produtos prods left join fetch mov.clienteFornecedor clifor where mov.codigo = ?1")
	Movimento findOneComplete(Long codigo);

}
