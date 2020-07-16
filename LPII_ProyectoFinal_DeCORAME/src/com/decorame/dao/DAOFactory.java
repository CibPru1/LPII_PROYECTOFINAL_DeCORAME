package com.decorame.dao;


import com.decorame.interfaces.ClienteDAO;
import com.decorame.interfaces.DistritoDAO;


public abstract class DAOFactory {

	public static final int MYSQL = 1;
	public static final int SQL = 2;
	
	public abstract ClienteDAO getClienteDao();
	public abstract DistritoDAO getDistritoDAO();
	
	
	public static DAOFactory getDAOFactory(int qFactory) {
		switch (qFactory) {
			case MYSQL:
				return new MySQLDAOFactory();
			//case SQL:
		//		return new SQLDAOFactory();
			default:
				return null;
		}
	}
	
}
