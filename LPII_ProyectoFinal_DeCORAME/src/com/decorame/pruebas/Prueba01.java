package com.decorame.pruebas;

import java.util.List;

import com.decorame.beans.DistritoDTO;
import com.decorame.dao.DAOFactory;
import com.decorame.interfaces.DistritoDAO;

public class Prueba01 {
	
	public static void main(String[] args) {
	
	DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	DistritoDAO distrito = factory.getDistritoDAO();
	
	List<DistritoDTO> listDistrito = distrito.listar();
	
	listDistrito.forEach(System.out::println);
	
	System.out.println("sass");
	
	}
}
