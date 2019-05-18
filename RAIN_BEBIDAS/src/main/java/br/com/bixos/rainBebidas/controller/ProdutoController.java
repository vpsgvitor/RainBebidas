package br.com.bixos.rainBebidas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import br.com.bixos.rainBebidas.model.Produto;
import br.com.bixos.rainBebidas.service.ProdutoService;

@Controller
public class ProdutoController {

	@Autowired
	private ProdutoService service;

	@GetMapping("/produto/listar")
	public List<Produto> lista() {
		return service.listar();
	}
}
