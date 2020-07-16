package com.decorame.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.decorame.beans.DepartamentoDTO;
import com.decorame.beans.DistritoDTO;
import com.decorame.beans.ProvinciaDTO;


public class GetDepProDis {

	public static List<DepartamentoDTO> listarDepartamentoDTO() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String instruccionSelect = "select * from departamentos";
		List<DepartamentoDTO> listDepartamentoDTO = new ArrayList<>();

		try {
			connection = MySQLConexion.getConnection();
			preparedStatement = connection.prepareStatement(instruccionSelect);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				DepartamentoDTO departamentoDTO = new DepartamentoDTO();

				departamentoDTO.setIdDepartamento(resultSet.getInt(1));
				departamentoDTO.setNombre(resultSet.getString(2));

				listDepartamentoDTO.add(departamentoDTO);
			}

		} catch (SQLException sqlExcepcion) {
			System.out.println(sqlExcepcion.getMessage());
		} finally {
			MySQLConexion.closeConexion(connection);
		}
		return listDepartamentoDTO;
	}
	
	//Provincia
	
	public static List<ProvinciaDTO> listarProvinciaDTO() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String instruccionSelect = "select * from provincias";
		List<ProvinciaDTO> listProvinciaDTO = new ArrayList<>();
		
		try {
			connection = MySQLConexion.getConnection();
			preparedStatement = connection.prepareStatement(instruccionSelect);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				ProvinciaDTO provinciaDTO = new ProvinciaDTO();
				
				provinciaDTO.setIdProvincia(resultSet.getInt(1));
				provinciaDTO.setIdDepartamento(resultSet.getInt(2));		
				provinciaDTO.setNombre(resultSet.getString(3));
				
				listProvinciaDTO.add(provinciaDTO);
			}
				
		} catch(SQLException sqlExcepcion) {
			System.out.println(sqlExcepcion.getMessage());
		} finally {
			MySQLConexion.closeConexion(connection);
		}
		return listProvinciaDTO;
	}
	
	//Distritos
	
	public static List<DistritoDTO> listarDistritoDTO() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String instruccionSelect = "select * from distrito";
		List<DistritoDTO> listDistritoDTO = new ArrayList<>();
		
		try {
			connection = MySQLConexion.getConnection();
			preparedStatement = connection.prepareStatement(instruccionSelect);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				DistritoDTO distritoDTO = new DistritoDTO();
				
				distritoDTO.setIdDistrito(resultSet.getInt(1));
				distritoDTO.setIdDepartamento(resultSet.getInt(2));
				distritoDTO.setIdProvincia(resultSet.getInt(3));
				distritoDTO.setNombreDisrito(resultSet.getString(4));
				
				listDistritoDTO.add(distritoDTO);
			}
				
		} catch(SQLException sqlExcepcion) {
			System.out.println(sqlExcepcion.getMessage());
		} finally {
			MySQLConexion.closeConexion(connection);
		}
		return listDistritoDTO;
	}
	

}
