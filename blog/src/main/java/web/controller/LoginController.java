package web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping("/login-form")
	public String login() {
		return "/WEB-INF/jsp/login.jsp";
	}
	
}
