package com.decorame.interfaces;

import java.util.ArrayList;

import com.decorame.beans.AmbienteDTO;

public interface AmbienteDAO {

	public int nuevoAmb (AmbienteDTO a);
	
	public ArrayList<AmbienteDTO> listado();
	
	public int actualizarAmb (AmbienteDTO a);
	
	public int eliminarAmb (int id);

}
