package repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Articulo;

public interface ArticuloRepository extends JpaRepository<Articulo, Integer> {

}
