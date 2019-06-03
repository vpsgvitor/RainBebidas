package br.com.bixos.rainBebidas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.bixos.rainBebidas.model.Produto;
import br.com.bixos.rainBebidas.service.ProdutoService;

@Controller
@RequestMapping("/produto")
public class ProdutoController {

	@Autowired
	private ProdutoService service;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String visualizar(Model model) {
		model.addAttribute("produtos", service.listar());

		return "produto/visualizar";
	}

	@GetMapping("novo")
	public String novoProduto(Model model) {
		return "produto/novo";
	}

	@Transactional
	@RequestMapping(value = "/ACProduto", method = RequestMethod.GET)
	public @ResponseBody List<Produto> field1() {
		return service.listar();
	}
}
