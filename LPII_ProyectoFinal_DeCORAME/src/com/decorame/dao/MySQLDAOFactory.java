package com.decorame.dao;

import com.decorame.interfaces.DistritoDAO;
import com.decorame.interfaces.UsuarioDAO;
import com.decorame.mantenimientos.MySQLDistritoDAO;
import com.decorame.mantenimientos.MySQLUsuarioDAO;

public class MySQLDAOFactory extends DAOFactory {

	@Override
	public UsuarioDAO getUsuarioDAO() {
		// TODO Auto-generated method stub
		return new MySQLUsuarioDAO();
	}

	@Override
	public DistritoDAO getDistritoDAO() {
		// TODO Auto-generated method stub
		return new MySQLDistritoDAO();
	}

}
