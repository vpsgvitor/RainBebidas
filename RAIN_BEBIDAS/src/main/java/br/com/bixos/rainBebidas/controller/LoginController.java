package br.com.bixos.rainBebidas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.bixos.rainBebidas.model.Usuario;

@Controller
public class LoginController {

	@GetMapping("/login")
	public String index() {
		return "login/index";
	}

	@PostMapping("/login/sigin")
	public String sigin(Usuario user) {
		return "dashboard/index";
	}
}
