package br.com.bixos.rainBebidas.repository;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.bixos.rainBebidas.model.ClienteFornecedor;

@Resource
public interface ClienteFornecedorRepository extends JpaRepository<ClienteFornecedor, Long> {

}
