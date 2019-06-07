package br.com.bixos.rainBebidas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("tipoProduto", new TipoProduto());
		return "tipoProduto/novo";
	}

	@PostMapping("/salvar")
	public String salvar(@ModelAttribute(value = "tipoProduto") TipoProduto tipoProduto, Model model) {
		service.salvar(tipoProduto);
		return "redirect:/categorias";
	}

	@GetMapping("/editar/{codigo}")
	public String editar(@PathVariable(value = "codigo") Long codigo, Model model) {
		model.addAttribute("tipoProduto", service.findOne(codigo));
		return "tipoProduto/novo";
	}

	@GetMapping("/excluir/{codigo}")
	public String excluir(@PathVariable(value = "codigo") Long codigo, Model model) {
		service.excluir(codigo);
		return "redirect:/categorias";
	}

	@RequestMapping(value = "/getListTipoProduto", method = RequestMethod.GET)
	public @ResponseBody List<TipoProduto> getList() {
		return service.listar();
	}
}
