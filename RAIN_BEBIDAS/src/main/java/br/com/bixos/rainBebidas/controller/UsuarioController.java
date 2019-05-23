package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.bixos.rainBebidas.model.Usuario;
import br.com.bixos.rainBebidas.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService service;

	@RequestMapping(value = "/usuario", method = RequestMethod.GET)
	public String visualizar(Model model) {
		model.addAttribute("usuarios", service.listar());

		return "usuario/visualizar";
	}

	@RequestMapping(value = "/usuario/salvar", method = RequestMethod.POST)
	public ModelAndView salvar(Usuario user) {
		service.salvar(user);

		return new ModelAndView("redirect:/usuario");
	}

	@GetMapping("/usuario/excluir/{codigo}")
	public ModelAndView excluir(@PathVariable(value = "codigo") Long codigo) {
		service.excluir(codigo);

		return new ModelAndView("redirect:/usuario");
	}
}
