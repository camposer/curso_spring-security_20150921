package model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2015-09-21T17:34:18.592+0200")
@StaticMetamodel(Articulo.class)
public class Articulo_ {
	public static volatile SingularAttribute<Articulo, Integer> id;
	public static volatile SingularAttribute<Articulo, Date> createdAt;
	public static volatile SingularAttribute<Articulo, String> texto;
	public static volatile SingularAttribute<Articulo, String> titulo;
}
