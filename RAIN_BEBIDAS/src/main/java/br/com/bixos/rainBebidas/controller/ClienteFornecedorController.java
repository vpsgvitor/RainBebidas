package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.bixos.rainBebidas.model.ClienteFornecedor;
import br.com.bixos.rainBebidas.service.ClienteFornecedorService;

@Controller
@RequestMapping("/clienteFornecedor")
public class ClienteFornecedorController {

	@Autowired
	private ClienteFornecedorService service;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String visualizar(Model model) {
		model.addAttribute("clientes", service.listar());

		return "clienteFornecedor/visualizar";
	}

	@GetMapping("/novo")
	public String novo() {
		return "clienteFornecedor/novo";
	}

	@PostMapping(value = "salvar", consumes = "application/json")
	public String salvar(ClienteFornecedor clienteFornecedor) {
		System.out.println(clienteFornecedor);
		service.salvar(clienteFornecedor);
		return "redirect:/clienteFornecedor";
	}

	@GetMapping("/excluir/{codigo}")
	public String excluir(@PathVariable(value = "codigo") Long codigo) {
		service.excluir(codigo);

		return "redirect:/clienteFornecedor";
	}

}
