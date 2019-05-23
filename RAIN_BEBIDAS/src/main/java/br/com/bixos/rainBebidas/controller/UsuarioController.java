package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import br.com.bixos.rainBebidas.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService service;

	@GetMapping("/usuario/novo")
	public void novo() {
		// Mapeado para JSP
	}
}
