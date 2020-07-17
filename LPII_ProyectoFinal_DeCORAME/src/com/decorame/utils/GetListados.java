package com.decorame.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.decorame.beans.AsesoramientoDTO;

public class GetListados {
	
	public static List<AsesoramientoDTO> listarAsesoramientoDTO() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String instruccionSelect = "select * from asesoramientos";
		List<AsesoramientoDTO> listAsesoramientoDTO = new ArrayList<>();
		
		try {
			connection = MySQLConexion.getConnection();
			preparedStatement = connection.prepareStatement(instruccionSelect);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				AsesoramientoDTO asesoramientoDTO = new AsesoramientoDTO();
				
				asesoramientoDTO.setIdAsesoramiento(resultSet.getInt(1));
				asesoramientoDTO.setNombre(resultSet.getString(2));
				asesoramientoDTO.setPrecio(resultSet.getDouble(3));				
				
				listAsesoramientoDTO.add(asesoramientoDTO);
			}
				
		} catch(SQLException sqlExcepcion) {
			System.out.println(sqlExcepcion.getMessage());
		} finally {
			MySQLConexion.closeConexion(connection);
		}
		return listAsesoramientoDTO;
	}
	

}
