package br.com.bixos.rainBebidas.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.bixos.rainBebidas.model.ClienteFornecedor;
import br.com.bixos.rainBebidas.model.Movimento;
import br.com.bixos.rainBebidas.model.Produto;
import br.com.bixos.rainBebidas.model.ProdutoMovimento;
import br.com.bixos.rainBebidas.model.TipoProduto;
import br.com.bixos.rainBebidas.model.util.TipoMovimento;
import br.com.bixos.rainBebidas.service.MovimentoService;

@Controller
@RequestMapping("/movimento")
public class MovimentoController {

	@Autowired
	private MovimentoService service;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String visualizar(Model model) {
		model.addAttribute("movimentos", service.listar());

		return "movimento/listar";
	}

	@GetMapping("/novo")
	public String novo(Model model) {
		ProdutoMovimento p = new ProdutoMovimento(1l, 2.2,
				new Produto(1l, "Cerveja", 4.50, 5.0, new TipoProduto(1l, "Bebidas")));

		model.addAttribute("movimento", new Movimento(9l, 3.3, TipoMovimento.ENTRADA, new ArrayList<ProdutoMovimento>(),
				new ClienteFornecedor()));

		return "movimento/novo";
	}

	@PostMapping("/salvar")
	public String salvar(@ModelAttribute(value = "movimento") Movimento movimento, Model model) {
		service.salvar(movimento);
		return "redirect:/movimento/listar";
	}

}
