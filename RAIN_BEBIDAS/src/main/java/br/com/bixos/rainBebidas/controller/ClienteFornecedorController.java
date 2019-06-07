package br.com.bixos.rainBebidas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String novo(Model model) {
		model.addAttribute("clienteFornecedor", new ClienteFornecedor());
		return "clienteFornecedor/novo";
	}

	@RequestMapping(value = "/salvar", method = RequestMethod.POST)
	public String salvar(@ModelAttribute("clienteFornecedor") ClienteFornecedor clienteFornecedor, ModelMap modelMap) {
		service.salvar(clienteFornecedor);
		return "redirect:/clienteFornecedor";
	}

	@GetMapping("/editar/{codigo}")
	public String editar(@PathVariable(value = "codigo") Long codigo, Model model) {
		ClienteFornecedor cliFor = service.findOne(codigo);
		model.addAttribute("clienteFornecedor", cliFor);
		return "clienteFornecedor/novo";
	}

	@GetMapping("/excluir/{codigo}")
	public String excluir(@PathVariable(value = "codigo") Long codigo) {
		service.excluir(codigo);

		return "redirect:/clienteFornecedor";
	}

	@RequestMapping(value = "/getListCliente", method = RequestMethod.GET)
	public @ResponseBody List<ClienteFornecedor> getList() {
		return service.listar();
	}

}
