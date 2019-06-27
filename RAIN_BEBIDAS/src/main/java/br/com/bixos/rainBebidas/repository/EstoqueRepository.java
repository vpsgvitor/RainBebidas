package br.com.bixos.rainBebidas.repository;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.bixos.rainBebidas.model.Estoque;
import br.com.bixos.rainBebidas.model.EstoqueDTO;
import br.com.bixos.rainBebidas.model.util.TipoMovimento;

@Resource
public interface EstoqueRepository extends JpaRepository<Estoque, Long> {

	@Query("select count(mov) as quantidade, sum(mov.valor) as somatorio from Movimento mov where mov.tipoMovimento = ?1")
	EstoqueDTO findParaEstoque(TipoMovimento tipoMovimento);

}
