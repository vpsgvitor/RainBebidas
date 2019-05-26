package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.bixos.rainBebidas.service.TipoProdutoService;

@Controller
@RequestMapping("/categorias")
public class TipoProdutoController {

	@Autowired
	private TipoProdutoService service;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String visualizar(Model model) {
		model.addAttribute("categorias", service.listar());

		return "tipoProduto/visualizar";
	}
}
