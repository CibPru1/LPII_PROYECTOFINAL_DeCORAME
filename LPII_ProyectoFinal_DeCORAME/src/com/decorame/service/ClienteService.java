package com.decorame.service;

import java.util.List;

import com.decorame.beans.ClienteDTO;

public interface ClienteService {
	
	public void crear(ClienteDTO clienteDTO);
	public void actualizar(ClienteDTO clienteDTO);
	public void eliminar(Integer idClienteDTO);
	
	public List<ClienteDTO> listarClienteDTOs();
	
	public ClienteDTO buscar(Integer idClienteDTO);
	


}
