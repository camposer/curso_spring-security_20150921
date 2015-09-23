package web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuthController {
	@RequestMapping("/login-form")
	public String login() {
		return "/WEB-INF/jsp/login.jsp";
	}
	
	@RequestMapping("/app-logout")
	public String logout(HttpSession session) {
		SecurityContextHolder.clearContext();
		return "redirect:/";
	}
}
