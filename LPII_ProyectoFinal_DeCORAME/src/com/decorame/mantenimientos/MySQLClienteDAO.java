package com.decorame.mantenimientos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import com.decorame.beans.ClienteDTO;
import com.decorame.interfaces.ClienteDAO;
import com.decorame.utils.MySQLConexion;

public class MySQLClienteDAO implements ClienteDAO{

	@Override
	public void crear(ClienteDTO t) {
		Connection mysqlConnection = null;
		PreparedStatement preparedStatement = null;		
		String instruccionInsert = "insert clientes"
				+ "(nombre, apePat, apeMat, fecNac, direccion, urbanizacion, idDepartamento, idProvincia, idDistrito, email, password, celular) "
				+ "values "
				+ "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
		try {
			mysqlConnection = MySQLConexion.getConnection();
			preparedStatement = mysqlConnection.prepareStatement(instruccionInsert);
			preparedStatement.setString(1, t.getNombre());
			preparedStatement.setString(2, t.getApePat());
			preparedStatement.setString(3, t.getApeMat());
			preparedStatement.setString(4, t.getFecNac());
			preparedStatement.setString(5, t.getDireccion());
			preparedStatement.setString(6, t.getUrbanizacion());
			preparedStatement.setInt(7, t.getIdDepartamento());
			preparedStatement.setInt(8, t.getIdProvincia());
			preparedStatement.setInt(9, t.getIdDistrito());
			preparedStatement.setString(10, t.getEmail());
			preparedStatement.setString(11, t.getPassword());
			preparedStatement.setString(12, t.getCelular());
			
			preparedStatement.executeUpdate();
			
		} catch (SQLException sqlException){
			System.out.println(sqlException.getMessage());
		} finally {
			MySQLConexion.closeConexion(mysqlConnection);
		}	
		
		
		
	}

	@Override
	public void actualizar(ClienteDTO t) {
		Connection mysqlConnection = null;
		PreparedStatement preparedStatement = null;		
		String instruccionUpdate= "update clientes set "
				+ "nombre = ?, apePat = ?, apeMat = ?, fecNac = ?, direccion = ?, urbanizacion = ?, idDepartamento = ?, idProvincia = ?, "
				+ "idDistrito = ?, email = ?, password = ?, celular = ? where idCliente = ?";
		
		try {
			mysqlConnection = MySQLConexion.getConnection();
			preparedStatement = mysqlConnection.prepareStatement(instruccionUpdate);
			
			preparedStatement.setString(1, t.getNombre());
			preparedStatement.setString(2, t.getApePat());
			preparedStatement.setString(3, t.getApeMat());
			preparedStatement.setString(4, t.getFecNac());
			preparedStatement.setString(5, t.getDireccion());
			preparedStatement.setString(6, t.getUrbanizacion());
			preparedStatement.setInt(7, t.getIdDepartamento());
			preparedStatement.setInt(8, t.getIdProvincia());
			preparedStatement.setInt(9, t.getIdDistrito());
			preparedStatement.setString(10, t.getEmail());
			preparedStatement.setString(11, t.getPassword());
			preparedStatement.setString(12, t.getCelular());
			preparedStatement.setInt(13, t.getIdCliente());
			
			preparedStatement.executeUpdate();
			
		} catch (SQLException sqlException){
			System.out.println(sqlException.getMessage());
		} finally {
			MySQLConexion.closeConexion(mysqlConnection);
		}	
		
	}

	@Override
	public void eliminar(Integer v) {
		Connection mysqlConnection = null;
		PreparedStatement preparedStatement = null;		
		String instruccionDelete = "delete from clientes where idCliente = ?";
		
		ClienteDTO clienteDTO = buscar(v);
		
		try {
			mysqlConnection = MySQLConexion.getConnection();
			preparedStatement = mysqlConnection.prepareStatement(instruccionDelete);
			preparedStatement.setInt(1, clienteDTO.getIdCliente());			
			preparedStatement.executeUpdate();
			
		} catch (SQLException sqlException){
			System.out.println(sqlException.getMessage());
		} finally {
			MySQLConexion.closeConexion(mysqlConnection);
		}	
		
	}


	@Override
	public List<ClienteDTO> listar() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String instruccionSelect = "select * from clientes";
		List<ClienteDTO> listClienteDTOs = new ArrayList<>();
		
		try {
			connection = MySQLConexion.getConnection();
			preparedStatement = connection.prepareStatement(instruccionSelect);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				ClienteDTO cliente = new ClienteDTO();
				
				cliente.setIdCliente(resultSet.getInt(1));
				cliente.setNombre(resultSet.getString(2));
				cliente.setApePat(resultSet.getString(3));
				cliente.setApeMat(resultSet.getString(4));
				cliente.setFecNac(resultSet.getString(5));							
				//cliente.setFecNac((resultSet.getTimestamp(5).toLocalDateTime()).toLocalDate());
				cliente.setDireccion(resultSet.getString(6));
				cliente.setUrbanizacion(resultSet.getString(7));
				cliente.setIdDepartamento(resultSet.getInt(8));
				cliente.setIdProvincia(resultSet.getInt(9));
				cliente.setIdDistrito(resultSet.getInt(10));
				cliente.setEmail(resultSet.getString(11));
				cliente.setPassword(resultSet.getString(12));
				cliente.setCelular(resultSet.getString(13));
				
				listClienteDTOs.add(cliente);
			}
				
		} catch(SQLException sqlExcepcion) {
			System.out.println(sqlExcepcion.getMessage());
		} finally {
			MySQLConexion.closeConexion(connection);
		}
		return listClienteDTOs;
	}

	@Override
	public ClienteDTO buscar(Integer v) {
		ClienteDTO cliente;
		Optional<ClienteDTO> cli = listar().stream().filter(x -> x.getIdCliente() == v).findFirst();
		cliente = cli.isPresent()?cli.get(): new ClienteDTO();
		return cliente;
	}

	@Override
	public ClienteDTO validar(String usuario, String clave) {
		// TODO Auto-generated method stub
		ClienteDTO u = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		String instrSelect= "select * from clientes where email = ? and password = ?";
		
		try {
			con = MySQLConexion.getConnection();			
			pst = con.prepareStatement(instrSelect);
			pst.setString(1, usuario);
			pst.setString(2, clave);
			
			// ejecutamos la sentencia y guardamos el resultado
			rs = pst.executeQuery();
			
			// pasar los datos del rs, a la lista
			if (rs.next()) {
				u = new ClienteDTO();
				u.setIdCliente(rs.getInt(1));
				u.setNombre(rs.getString(2));
				u.setApePat(rs.getString(3));
				u.setApeMat(rs.getString(4));
				u.setFecNac(rs.getString(5));
				//u.setFecNac((rs.getTimestamp(5).toLocalDateTime()).toLocalDate());
				u.setDireccion(rs.getString(6));
				u.setUrbanizacion(rs.getString(7));
				u.setIdDepartamento(rs.getInt(8));
				u.setIdProvincia(rs.getInt(9));
				u.setIdDistrito(rs.getInt(10));
				u.setEmail(rs.getString(11));
				u.setPassword(rs.getString(12));
				u.setCelular(rs.getString(13));
			}
		} catch (Exception e) {
			System.out.println("Error al validar usuario: " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con);
		}
		
		return u;
	}

}

