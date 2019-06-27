package br.com.bixos.rainBebidas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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

	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("produto", new Produto());
		return "produto/novo";
	}

	@PostMapping("/salvar")
	public String salvar(@ModelAttribute(value = "produto") Produto produto, Model model) {
		service.salvar(produto);
		return "redirect:/produto";
	}

	@GetMapping("/editar/{codigo}")
	public String editar(@PathVariable(value = "codigo") Long codigo, Model model) {
		model.addAttribute("produto", service.findOne(codigo));
		return "produto/novo";
	}

	@GetMapping("/excluir/{codigo}")
	public String excluir(@PathVariable(value = "codigo") Long codigo, Model model) {
		Produto prod = service.findOne(codigo);

		if (prod.getQuantidade() > 0) {
			model.addAttribute("error", "Não é possível excluir produto com quantidade no estoque");
		} else if (service.existeMovimento(prod.getCodigo())) {
			model.addAttribute("error", "Não é possível excluir produto ligado à um movimento");
		} else {
			service.excluir(codigo);
			return "redirect:/produto";
		}

		model.addAttribute("produtos", service.listar());
		return "produto/visualizar";

	}

	@Transactional
	@RequestMapping(value = "/getListProduto", method = RequestMethod.GET)
	public @ResponseBody List<Produto> getList() {
		return service.listar();
	}
}
