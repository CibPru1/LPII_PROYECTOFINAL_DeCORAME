package com.decorame.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.decorame.beans.ClienteDTO;
import com.decorame.dao.DAOFactory;
import com.decorame.interfaces.ClienteDAO;

/**
 * Servlet implementation class UsuarioServlet
 */
@WebServlet(name = "usuario", urlPatterns = { "/usuario" })
public class UsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Ingresando al servlet usuario");

		String opc = request.getParameter("btns");
		System.out.println("Opcion : " + opc);
		opc = (opc == null ? "s" : opc); 		

		switch (opc) {
		case "v": validar(request, response); break;
		default:
			request.getSession().invalidate();
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}
	
	private void validar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// variables
		String usuario, clave;
		String url; 
		String mensaje; 

		// entradas
		usuario = request.getParameter("txtUsuario");
		clave = request.getParameter("txtClave");
		System.out.println(usuario + "-" + clave);

		// procesos
		DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
		ClienteDAO dao = fabrica.getClienteDao();
		
		ClienteDTO u = dao.validar(usuario, clave);
		
		// muestra la session actual
		System.out.println("Session ID : " + request.getSession().getId());
		
		if (u != null) {
			mensaje = "Bienvenido " + u.getNombre();
			// envia el atributo datos a nivel de session
			request.getSession().setAttribute("cliente", u);
			url = "/Servicios.jsp";
		} else {
			mensaje = "Usuario o clave incorrecto";
			url = "login.jsp";
		}

		// salidas
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher(url).forward(request, response);
	}
 
}
