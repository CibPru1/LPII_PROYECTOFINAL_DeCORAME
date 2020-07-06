package dao;

import interfaces.UsuarioDAO;

public abstract class DAOFactory {

	public static final int MYSQL = 1;
	public static final int SQL = 2;
	
	public abstract UsuarioDAO getUsuarioDAO();
	
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
