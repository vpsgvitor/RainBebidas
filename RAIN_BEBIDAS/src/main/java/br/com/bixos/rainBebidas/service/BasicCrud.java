package br.com.bixos.rainBebidas.service;

import java.util.List;

public interface BasicCrud<T> {

	void salvar(T object);

	void excluir(Long objectId);

	List<T> listar();

	T findOne(Long objectId);
}
