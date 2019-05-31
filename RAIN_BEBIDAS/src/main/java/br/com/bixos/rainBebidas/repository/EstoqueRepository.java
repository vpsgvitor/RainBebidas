package br.com.bixos.rainBebidas.repository;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.bixos.rainBebidas.model.Estoque;
import br.com.bixos.rainBebidas.model.EstoqueDTO;

@Resource
public interface EstoqueRepository extends JpaRepository<Estoque, Long> {

	//@formatter:off
	@Query("select new br.com.bixos.rainBebidas.model.EstoqueDTO("
			+ "(select count(mov.valor) from Movimento mov where tipo_movimento = 'COMPRA'),"
			+ "(select sum(mov.valor) from Movimento mov where tipo_movimento = 'COMPRA'),"
			+ "(select count(mov.valor) from Movimento mov where tipo_movimento = 'VENDA'),"
			+ "(select sum(mov.valor) from Movimento mov where tipo_movimento = 'VENDA')) "
			+ "from Movimento mov")
	//@formatter:on
	EstoqueDTO findInfoEstoque();

}
