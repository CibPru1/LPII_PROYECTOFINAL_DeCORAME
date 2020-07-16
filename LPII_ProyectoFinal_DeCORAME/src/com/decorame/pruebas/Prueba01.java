package com.decorame.pruebas;

import java.util.List;

import com.decorame.beans.ClienteDTO;
import com.decorame.dao.DAOFactory;
import com.decorame.interfaces.ClienteDAO;

public class Prueba01 {
	
	public static void main(String[] args) {
	
	DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);	

	//LISTAR distrito
//	DistritoDAO distrito = factory.getDistritoDAO();
//	List<DistritoDTO> listDistrito = distrito.listar();
//	listDistrito.forEach(System.out::println);
//	System.out.println("sass");
	
	//LISTAR cliente
//	ClienteDAO cliente = factory.getClienteDao();
//	List<ClienteDTO> cli = cliente.listar();
//	cli.forEach(System.out::println);
	
	//CREAR	cliente
//	LocalDate localDate = LocalDate.parse("2015-02-20");
//	ClienteDTO cl = new ClienteDTO("Eduardo", "Suarez", "Montilla", localDate, "Los Sauces 23", "Las Viñas", 15, 50, 18, "li12341@gmail.com", "12345","999888777");
//	cliente.crear(cl);
//	List<ClienteDTO> cli = cliente.listar();
//	cli.forEach(System.out::println);
	
	//BUSCAR cliente
//	ClienteDAO cliente = factory.getClienteDao();
//	ClienteDTO cl = cliente.buscar(2);
//	System.out.println(cl);
		
	//ACTUALIZAR
//	ClienteDAO cliente = factory.getClienteDao();
//	ClienteDTO cl = cliente.buscar(2);
//	cl.setNombre("Hilda");
//	cliente.actualizar(cl);
//	System.out.println(cl);

	//ELIMINAR
	
	ClienteDAO cliente = factory.getClienteDao();
	cliente.eliminar(2);
	List<ClienteDTO> cli = cliente.listar();
	cli.forEach(System.out::println);
	
	}
}
