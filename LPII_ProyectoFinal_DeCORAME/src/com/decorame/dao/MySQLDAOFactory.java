package com.decorame.dao;

import com.decorame.interfaces.ClienteDAO;
import com.decorame.interfaces.DistritoDAO;
import com.decorame.mantenimientos.MySQLClienteDAO;
import com.decorame.mantenimientos.MySQLDistritoDAO;


public class MySQLDAOFactory extends DAOFactory {



	@Override
	public DistritoDAO getDistritoDAO() {
		// TODO Auto-generated method stub
		return new MySQLDistritoDAO();
	}

	@Override
	public ClienteDAO getClienteDao() {
		// TODO Auto-generated method stub
		return new MySQLClienteDAO();
	}



}
