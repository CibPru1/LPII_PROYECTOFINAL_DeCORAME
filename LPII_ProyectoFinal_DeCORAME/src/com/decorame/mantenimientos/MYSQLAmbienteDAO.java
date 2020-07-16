package com.decorame.mantenimientos;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.decorame.beans.AmbienteDTO;
import com.decorame.interfaces.AmbienteDAO;
import com.decorame.utils.MySQLConexion;


public class MYSQLAmbienteDAO implements AmbienteDAO {

	@Override
	public int nuevoAmb(AmbienteDTO a) {
		int rs = 0;
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con=MySQLConexion.getConnection();
			/*call sp_AltaAmbiente(9, 'prueba');*/
			String sql = "{call sp_AltaAmbiente(?, ?)}";
			
			pst=con.prepareStatement(sql);
			pst.setInt(1, a.getIdAmbiente());
			pst.setString(2, a.getNombre());
			
			rs=pst.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Error al ingresar Ambiente " + e.getMessage());
		}
		finally {
			MySQLConexion.closeConexion(con);
		}
		return rs;
	}

	@Override
	public int actualizarAmb(AmbienteDTO a) {
		int rs = 0;
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			con=MySQLConexion.getConnection();
			/*call sp_MantAmbiente(1, 'prueba');*/
			String sql = "{call sp_MantAmbiente(?, ?)}";
			
			pst=con.prepareStatement(sql);
			
			pst.setInt(1, a.getIdAmbiente());
			pst.setString(2, a.getNombre());

			rs=pst.executeUpdate();
			
		}catch (Exception e) {
			System.out.println("Error al actualizar el producto " + e.getMessage());
		}
		finally {
			MySQLConexion.closeConexion(con);
		}
		
		return rs;
	}

	@Override
	public int eliminarAmb(int id) {
		
			int eu = 0;
			Connection con = null;
			PreparedStatement pst = null;
			
			try{
				con = MySQLConexion.getConnection();
				/*call sp_DeleteAmbiente(9);*/
				String sql = "{call sp_DeleteAmbiente(?)}";
				
				pst=con.prepareStatement(sql);
				
				pst.setInt(1, id);
				
				eu=pst.executeUpdate();
			}
			catch(Exception e){
				System.out.println("Error con el usuario eu " + e.getMessage());
			}
			finally{
				MySQLConexion.closeConexion(con);
			}
			return eu;

	}
	
	@Override
	public ArrayList<AmbienteDTO> listado() {
		ArrayList<AmbienteDTO> lista = null;//valor x default en caso de una lista vacia
		// Plantilla de BD
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			con=MySQLConexion.getConnection();
			String sql = "{call sp_ListAmbiente()}";
			
			pst=con.prepareStatement(sql);
			
			//ejecutamos la sentencia y guardamos los resultados
			rs=pst.executeQuery();
			
			//pasar los datos del rs, a la lista
			lista=new ArrayList<AmbienteDTO>();
			
			while(rs.next()) {
				AmbienteDTO a = new AmbienteDTO();
				a.setIdAmbiente(rs.getInt(1));
				a.setNombre(rs.getString(2));

				lista.add(a);
			}
			
		} catch (Exception e) {
			System.out.println("Error en listar ambientes"+ e.getMessage());
		}finally {
			MySQLConexion.closeConexion(con);
		}	
		return lista;
	}
	

}
