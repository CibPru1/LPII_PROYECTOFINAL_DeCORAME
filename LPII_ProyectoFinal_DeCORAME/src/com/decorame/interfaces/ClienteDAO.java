package com.decorame.interfaces;

import com.decorame.beans.ClienteDTO;

public interface ClienteDAO extends EntidadDao<ClienteDTO, Integer> {
	
	// validar el ingreso del cliente
	public ClienteDTO validar(String usuario, String clave);

}
