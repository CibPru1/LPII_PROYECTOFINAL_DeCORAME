package com.decorame.interfaces;

import com.decorame.beans.UsuarioDTO;

public interface UsuarioDAO extends EntidadDao<UsuarioDTO, String>{
	//los métodos del CRUD(Create, Update, Delete, etc), lo esta heredando de EntidadDao
	
	//Este es un método propio de esta clase, 
	public UsuarioDTO validar(String usuario, String clave);
	
}
