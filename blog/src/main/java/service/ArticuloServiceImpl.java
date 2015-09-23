package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.Articulo;
import repository.ArticuloRepository;

@Service
@Transactional
public class ArticuloServiceImpl implements ArticuloService {
	@Autowired
	private ArticuloRepository articuloRepository;
	
	
	@Override
	@Secured("ROLE_USER")
	public List<Articulo> obtenerArticulos() {
		return articuloRepository.findAll();
	}

}
