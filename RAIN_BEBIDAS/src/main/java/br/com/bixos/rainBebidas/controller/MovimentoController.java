package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.bixos.rainBebidas.model.Movimento;
import br.com.bixos.rainBebidas.service.MovimentoService;

@Controller
@RequestMapping("/movimentos")
public class MovimentoController {

	@Autowired
	private MovimentoService service;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String visualizar(Model model) {
		model.addAttribute("movimentos", service.listar());

		return "movimento/listar";
	}

	@GetMapping("/novo/{codigo}")
	public String novo(@PathVariable(value = "codigo") Long codigo, Model model) {
		model.addAttribute("movimento", new Movimento());
		model.addAttribute("tipo", codigo > 1 ? "Venda" : "Compra");
		return "movimento/novo";

	}
}
