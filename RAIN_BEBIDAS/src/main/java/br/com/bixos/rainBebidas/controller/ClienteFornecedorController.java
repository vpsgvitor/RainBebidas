package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.bixos.rainBebidas.model.ClienteFornecedor;
import br.com.bixos.rainBebidas.service.ClienteFornecedorService;

public class ClienteFornecedorController {

	@Autowired
	private ClienteFornecedorService service;

	@RequestMapping(value = "/cliente", method = RequestMethod.GET)
	public String visualizar(Model model) {
		model.addAttribute("clientes", service.listar());

		return "clienteFornecedor/visualizar";
	}

	@RequestMapping(value = "/cliente/salvar", method = RequestMethod.POST)
	public ModelAndView salvar(ClienteFornecedor user) {
		service.salvar(user);

		return new ModelAndView("redirect:/cliente");
	}

	@GetMapping("/cliente/excluir/{codigo}")
	public ModelAndView excluir(@PathVariable(value = "codigo") Long codigo) {
		service.excluir(codigo);

		return new ModelAndView("redirect:/cliente");
	}

}
