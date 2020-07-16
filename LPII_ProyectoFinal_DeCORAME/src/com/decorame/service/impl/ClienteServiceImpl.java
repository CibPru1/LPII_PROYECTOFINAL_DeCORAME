package com.decorame.service.impl;

import java.util.List;

import com.decorame.beans.ClienteDTO;
import com.decorame.dao.DAOFactory;
import com.decorame.interfaces.ClienteDAO;
import com.decorame.service.ClienteService;
import com.decorame.utils.Util;

public class ClienteServiceImpl implements ClienteService{
	DAOFactory factory = null;
	ClienteDAO cliente = null;
	
     public ClienteServiceImpl() {
    	 factory = DAOFactory.getDAOFactory(Util.opc);
    	 cliente = factory.getClienteDao();
	}

	@Override
	public void crear(ClienteDTO clienteDTO) {
		cliente.crear(clienteDTO);
	}

	@Override
	public void actualizar(ClienteDTO clienteDTO) {
		cliente.actualizar(clienteDTO);
	}

	@Override
	public void eliminar(Integer idClienteDTO) {
		cliente.eliminar(idClienteDTO);
		
	}

	@Override
	public List<ClienteDTO> listarClienteDTOs() {
		return cliente.listar();
	}

	@Override
	public ClienteDTO buscar(Integer idClienteDTO) {
		return cliente.buscar(idClienteDTO);
	}

}
