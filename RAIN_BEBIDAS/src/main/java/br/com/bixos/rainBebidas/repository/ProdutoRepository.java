package br.com.bixos.rainBebidas.repository;

import org.springframework.data.jpa.mapping.JpaPersistentEntity;

import br.com.bixos.rainBebidas.model.Produto;

public interface ProdutoRepository extends JpaPersistentEntity<Produto> {

}
