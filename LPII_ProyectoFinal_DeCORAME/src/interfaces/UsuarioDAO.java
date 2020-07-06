package interfaces;

import beans.UsuarioDTO;

public interface UsuarioDAO {
	
	// Registrar los datos de un nuevo usuario
	public int registrar(UsuarioDTO u);
	
	// Validar si existe el usuario ingresado
	public UsuarioDTO validar(String usuario, String clave);

}
