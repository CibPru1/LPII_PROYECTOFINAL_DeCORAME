package com.decorame.servlets;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.decorame.beans.AsesoramientoDTO;
import com.decorame.utils.GetListados;

@WebServlet(description = "aseso_serv", urlPatterns = { "/AsesoramientosServlet" })
public class AsesoramientosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opcion = request.getParameter("btns");
		System.out.println(opcion);
		
		switch (opcion) {
			case "p": procesarListado(request, response); break;			
			default: break;
			
		}
	}

	private void procesarListado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<AsesoramientoDTO> listaAsesoramiento = new ArrayList<>();
		listaAsesoramiento = GetListados.listarAsesoramientoDTO();
		
		request.getSession().setAttribute("listProd", listaAsesoramiento);
		
		request.getRequestDispatcher("/carrocompraslistado.jsp").forward(request, response);
		
		
	}

}
