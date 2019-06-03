package br.com.bixos.rainBebidas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.bixos.rainBebidas.model.Produto;
import br.com.bixos.rainBebidas.model.TipoProduto;
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

	@Transactional
	@RequestMapping(value = "/ACTipoProduto", method = RequestMethod.GET)
	public @ResponseBody List<TipoProduto> field1() {
		return service.listar();
	}
}
