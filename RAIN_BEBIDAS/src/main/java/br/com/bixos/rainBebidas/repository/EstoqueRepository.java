package br.com.bixos.rainBebidas.repository;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.bixos.rainBebidas.model.Estoque;
import br.com.bixos.rainBebidas.model.EstoqueDTO;

@Resource
public interface EstoqueRepository extends JpaRepository<Estoque, Long> {

	@Query("select new br.com.bixos.rainBebidas.model.EstoqueDTO(9,560000.20, 12, 250.00) from Movimento mov")
	EstoqueDTO findInfoEstoque();

}
