package com.decorame.dao;

import com.decorame.interfaces.DistritoDAO;
import com.decorame.interfaces.UsuarioDAO;

public abstract class DAOFactory {

	public static final int MYSQL = 1;
	public static final int SQL = 2;
	
	public abstract UsuarioDAO getUsuarioDAO();
	public abstract DistritoDAO getDistritoDAO();
	
	public static DAOFactory getDAOFactory(int qFactory) {
		switch (qFactory) {
			case MYSQL:
				return new MySQLDAOFactory();
			case SQL:
				return new SQLDAOFactory();
			default:
				return null;
		}
	}
	
}
