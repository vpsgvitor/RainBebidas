package br.com.bixos.rainBebidas.repository;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.bixos.rainBebidas.model.Estoque;
import br.com.bixos.rainBebidas.model.EstoqueDTO;

@Resource
public interface EstoqueRepository extends JpaRepository<Estoque, Long> {

	// @formatter:off
	@Query("select (select count(mov) from Movimento mov where tipo_movimento = 'ENTRADA') as contas, "
			+ "(select sum(mov.valor) from Movimento mov where tipo_movimento = 'ENTRADA') as totalContas, "
			+ "(select count(mov) from Movimento mov where tipo_movimento = 'SAIDA') as vendas, "
			+ "(select sum(mov.valor) from Movimento mov where tipo_movimento = 'SAIDA') as totalVendas "
			+ "from Movimento mov ")
	// @formatter:on
	List<EstoqueDTO> findInfoEstoque();

}
