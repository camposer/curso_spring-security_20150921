package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.ArticuloService;

@Controller
@RequestMapping("/articulos*")
public class ArticuloController {
	@Autowired
	private ArticuloService articuloService;
	
	// http://localhost:8080/blog/articulos.do
	@RequestMapping("")
	public String index(Model model) {
		model.addAttribute("articulos", articuloService.obtenerArticulos());
		return "/WEB-INF/jsp/articulo/index.jsp";
	}
	
}
