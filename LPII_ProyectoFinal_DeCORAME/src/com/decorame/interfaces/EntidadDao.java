package com.decorame.interfaces;

import java.util.List;

/*
 * Cuando una interface extienda de esta interface se le debe indicar el 'T' tipo
 * Ejemplo T: UsuarioDTO
 * 'V' es el valor del tipo de la llave primaria
 * Ejemplo V: Integer
 * */

public interface EntidadDao<T, V> {
	
	public void crear(T t);
	public void actualizar(T t);
	public void eliminar(V v);
	
	public List<T> listar();
	public T buscar(V v);
	

}
