package co.edu.unac.ing.store.utilities;

import java.util.List;

public interface Obligacion<Datos> {
	public boolean create(Datos a);
	public boolean update(Datos id);
	public boolean delete(Object id);
	public Datos read(Object id);
	public List<Datos> readProducts(Object dataSearch, String col);
	public List<Datos> readAll();
}
