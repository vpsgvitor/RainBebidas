package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import br.com.bixos.rainBebidas.service.TipoProdutoService;

@Controller
public class TipoProdutoController {

	@Autowired
	private TipoProdutoService service;
}