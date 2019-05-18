package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import br.com.bixos.rainBebidas.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService service;
}
