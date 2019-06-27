package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.bixos.rainBebidas.exceptions.ProdutoSemQuantidadeException;
import br.com.bixos.rainBebidas.model.Movimento;
import br.com.bixos.rainBebidas.service.MovimentoService;

@Controller
@RequestMapping("/movimento")
public class MovimentoController {

	@Autowired
	private MovimentoService service;

	@RequestMapping(value = { "/", "", "/listar" }, method = RequestMethod.GET)
	public String listar(Model model) {
		model.addAttribute("movimentos", service.listar());

		return "movimento/listar";
	}

	@GetMapping("/novo")
	public String novo(Model model) {
		model.addAttribute("movimento", new Movimento());
		return "movimento/novo";
	}

	@GetMapping("/visualizar/{codigo}")
	public String visualizar(@PathVariable(value = "codigo") Long codigo, Model model) {
		Movimento mov = service.findOneComplete(codigo);
		model.addAttribute("movimento", mov);
		return "movimento/novo";
	}

	@RequestMapping(value = "/salvar", method = RequestMethod.POST)
	public String salvar(@ModelAttribute(value = "movimento") Movimento movimento, Model model) {
		try {
			service.validaProdutos(movimento);
			service.salvar(movimento);
			return "redirect:/movimento/listar";
		} catch (ProdutoSemQuantidadeException e) {
			model.addAttribute("error", e.getMessage());
			movimento.setDataVencimento(null);
			model.addAttribute("movimento", movimento);
			return "movimento/novo";
		}
	}

}
