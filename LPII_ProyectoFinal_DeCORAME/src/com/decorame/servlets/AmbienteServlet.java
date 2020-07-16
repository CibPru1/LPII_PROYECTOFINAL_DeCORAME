package com.decorame.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.decorame.beans.AmbienteDTO;
import com.decorame.dao.DAOFactory;
import com.decorame.interfaces.AmbienteDAO;


/**
 * Servlet implementation class AmbienteServlet
 */
@WebServlet(name = "ambiente", urlPatterns = { "/ambiente" })
public class AmbienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("entro al servlet Ambientes");
		
		//capturar el boton pulsado, se captura los datos con request.getParameter()
		String opc = request.getParameter("btns");
		System.out.println("Opción :" + opc);
		
		//segun la opción seleccionada, se le debe pasar todos los parámetros que recibe ese service: request, response
		switch (opc) {
			case "r": registrar(request,response); break;
			case "a": actualizar(request,response); break;
			case "e": eliminar(request,response); break;
			case "l": listar(request,response); break;

		default:
			break;
	}

}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Entro al Listar");
		
		//variables de salida, como es un listado necesita una variable ArrayList
		String mensaje;
		String url;

		//entradas, no tengo en este caso
		
		//procesos
		
		DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
		AmbienteDAO dao = fabrica.getAmbienteDAO();
				
		ArrayList<AmbienteDTO> lstAmbientes = dao.listado();
		
		//salidas 
		request.setAttribute("listadito", lstAmbientes);
		request.getRequestDispatcher("/listadoAmb.jsp").forward(request, response);
		
	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entro al actualizar Ambiente");
		//variables
		int idambiente;
		String nom;	
		String mensaje;
		String url;
		
		//entrada de datos
		idambiente=Integer.parseInt(request.getParameter("IdAmbiente"));
		nom=request.getParameter("txtAmbiente");

		
		//comprobación
		AmbienteDTO a = new AmbienteDTO();
		a.setIdAmbiente(idambiente);
		a.setNombre(nom);
		System.out.println(a);
		
		//procesos
		//--MySQLProductoDAO gp = new MySQLProductoDAO();
		DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
		AmbienteDAO dao = fabrica.getAmbienteDAO();
		
		int ok = dao.actualizarAmb(a);
		if(ok == 0) {
			mensaje="No se pudo realizar ACTUALIZACIÓN";
			url="/CrudServicios.jsp";
		}else {
			mensaje="ACTUALIZACIÓN correcta de " + " ' " + a.getNombre() + " ' " + "OK";
			url="/CrudServicios.jsp";
		}
		
		//salida
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher(url).forward(request, response);
		
	}

	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entró al serverlet de Registrar");
		
		//variables
		int idambiente;
		String nom;	
		String mensaje;
		String url;
		
		//entrada de datos
		idambiente=Integer.parseInt(request.getParameter("IdAmbiente"));
		nom=request.getParameter("txtAmbiente");

		
		//comprobación
		AmbienteDTO a = new AmbienteDTO();
		a.setIdAmbiente(idambiente);
		a.setNombre(nom);
		System.out.println(a);
		
		//procesos
		//--MySQLProductoDAO gp = new MySQLProductoDAO();
		DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
		AmbienteDAO dao = fabrica.getAmbienteDAO();
		
		int ok=dao.nuevoAmb(a);
		if(ok==0) {
			mensaje="Ambiente no pudo registrase";
			url="/CrudServicios.jsp";
		}else {
			mensaje="Registro exitoso" + " ' " + a.getNombre() + " ' " +  "OK";
			url="/CrudServicios.jsp";
		}
		
		//salida
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher(url).forward(request, response);
		
		
	}
}