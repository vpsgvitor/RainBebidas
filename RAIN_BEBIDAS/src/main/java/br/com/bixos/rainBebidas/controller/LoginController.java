package br.com.bixos.rainBebidas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.bixos.rainBebidas.model.Usuario;
import br.com.bixos.rainBebidas.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService service;

	@GetMapping("/login")
	public String index() {
		return "login/index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView sigIn(Usuario user) {
		if (service.login(user)) {
			return new ModelAndView("redirect:/dashboard");
		} else {
			return new ModelAndView("redirect:/login");
		}
	}

	@GetMapping("/logout")
	public ModelAndView logout() {
		service.logout();
		return new ModelAndView("redirect:/");
	}
}
