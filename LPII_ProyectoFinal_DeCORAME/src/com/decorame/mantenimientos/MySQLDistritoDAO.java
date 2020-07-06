package com.decorame.mantenimientos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.decorame.beans.DistritoDTO;
import com.decorame.interfaces.DistritoDAO;
import com.decorame.utils.MySQLConexion;


public class MySQLDistritoDAO implements DistritoDAO {

	@Override
	public void crear(DistritoDTO t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void actualizar(DistritoDTO t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void eliminar(Integer v) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<DistritoDTO> listar() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String instruccionSelect = "select * from distrito";
		List<DistritoDTO> listDistritos = new ArrayList<>();

		try {
			connection = MySQLConexion.getConnection();
			preparedStatement = connection.prepareStatement(instruccionSelect);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				DistritoDTO distrito = new DistritoDTO();

				distrito.setIdDistrito(resultSet.getInt(1));
				distrito.setIdDepartamento(resultSet.getInt(2));
				distrito.setIdProvincia(resultSet.getInt(3));
				distrito.setNombreDisrito(resultSet.getString(4));
				

				listDistritos.add(distrito);
			}

		} catch (SQLException sqlExcepcion) {
			System.out.println(sqlExcepcion.getMessage());
		} finally {
			MySQLConexion.closeConexion(connection);
		}
		return listDistritos;
	}

	@Override
	public DistritoDTO buscar(Integer v) {
		// TODO Auto-generated method stub
		return null;
	}

}
