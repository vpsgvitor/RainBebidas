package br.com.bixos.rainBebidas.repository;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.bixos.rainBebidas.model.Conta;

@Resource
public interface ContaRepository extends JpaRepository<Conta, Long> {

}
