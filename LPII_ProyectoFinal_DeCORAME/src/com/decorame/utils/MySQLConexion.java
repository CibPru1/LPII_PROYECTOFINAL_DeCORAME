package com.decorame.utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.PropertyResourceBundle;

public class MySQLConexion {
	
	private static String driver= null;
	private static String usuario = null;
	private static String password = null;
	private static String url = null;
	static PropertyResourceBundle properties;

	static{
		try{
			properties = new PropertyResourceBundle(new FileInputStream(Util.RUTA));
			driver= properties.getString("DRIVER");
			url= properties.getString("URL");
			usuario= properties.getString("USER");
			password= properties.getString("PASS");
	
			Class.forName(driver);	
		}catch (IOException e){
			System.out.println("Error:"+e);
		}catch (ClassNotFoundException e) {
	            System.out.println("Driver no Instalado");
	    }
	}
	
	/**
	 * Obtiene una conexión a la Base de Datos.
	 */
	public static Connection getConnection() {
		Connection connection=null;
		try{
			connection = DriverManager.getConnection(url,usuario,password);
		}
		catch(SQLException e){
			//Error en base de datos no se puede lograr la conexion
		    System.out.println("Error de conexión con la BD " + e.getMessage());
		}		
		return connection;
	}
	
	public static void closeConexion(Connection con) {

		try {
			con.close();// Sentencia para cerrar la conexión
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Problemas al cerrar la conexion");
		}
	}

	public static void closeStatement(Statement stmt) {

		try {
			stmt.close();// sentencia para cerrar el statement
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Problemas al cerrar el statement");
		}
	}
		

}
