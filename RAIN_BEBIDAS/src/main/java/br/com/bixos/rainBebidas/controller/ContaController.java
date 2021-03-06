package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.bixos.rainBebidas.service.ContaService;

@Controller
@RequestMapping("/financeiro")
public class ContaController {

	@Autowired
	private ContaService service;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String visualizar(Model model) {
		model.addAttribute("contas", service.listar());
		return "conta/visualizar";
	}

	@GetMapping("/baixar")
	public String baixar(@RequestParam(value = "codigo") Long codigo, Model model) {
		service.baixar(codigo);
		return "redirect:/financeiro";
	}
}
