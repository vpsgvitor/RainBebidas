package br.com.bixos.rainBebidas.controller;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

	@GetMapping("/novo/{codigo}")
	public String novo(@PathVariable(value = "codigo") Long codigo, Model model) {
		model.addAttribute("movimento",
				new Movimento(9l, 3.3, TipoMovimento.ENTRADA, Arrays.asList(
						new ProdutoMovimento(6l, 1.3, new Produto(6l, "P", 3.6, 3.3, new TipoProduto(9l, "B")))),
						new ClienteFornecedor()));

		model.addAttribute("tipo", codigo > 1 ? "Venda" : "Compra");
		return "movimento/novo";
	}

	@PostMapping("/salvar")
	public String salvar(@ModelAttribute(value = "movimento") Movimento movimento, Model model) {
		service.salvar(movimento);
		return "redirect:/movimento/listar";
	}

}
