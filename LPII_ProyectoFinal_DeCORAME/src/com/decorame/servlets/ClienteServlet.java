package com.decorame.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.decorame.beans.ClienteDTO;
import com.decorame.beans.DepartamentoDTO;
import com.decorame.beans.DistritoDTO;
import com.decorame.beans.ProvinciaDTO;
import com.decorame.service.impl.ClienteServiceImpl;
import com.decorame.utils.GetDepProDis;


import static com.decorame.utils.Util.MOSTRAR_FORM_REGISTRO;
import static com.decorame.utils.Util.REGISTRAR;


@WebServlet(name = "cli_serv", urlPatterns = { "/cli_serv" })
public class ClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opcion = request.getParameter("btns");
		
		switch (opcion) {
			case MOSTRAR_FORM_REGISTRO: mostrarFormRegistro(request, response); break;
			case REGISTRAR: registrar(request, response); break;
			default: break;
			
		}
	}

	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Ingresó!");

		String nombre;
		String apePat;
		String apeMat;
		String fecNacimiento;
		String direccion;
		String urbanizacion;
		Integer idDepartamento;
		Integer idProvincia;
		Integer idDistrito;
		String email;
		String password;
		String celular;
		
		nombre = request.getParameter("nombre");
		apePat = request.getParameter("apePat");
		apeMat = request.getParameter("apeMat");
		fecNacimiento = request.getParameter("fecNac");
		direccion = request.getParameter("direccion");
		urbanizacion = request.getParameter("urbanizacion");
		idDepartamento = Integer.parseInt(request.getParameter("cboDepartamento"));
		idProvincia = Integer.parseInt(request.getParameter("cboProvincia"));
		idDistrito = Integer.parseInt(request.getParameter("cboDistrito"));
		email = request.getParameter("email");
		password = request.getParameter("password");
		celular = request.getParameter("celuar");
		
		System.out.println(nombre);
		System.out.println(apePat);
		System.out.println(apeMat);
		System.out.println(apeMat);
		System.out.println(fecNacimiento);
		System.out.println(direccion);
		System.out.println(urbanizacion);
		System.out.println(idDepartamento);
		System.out.println(idProvincia);
		System.out.println(idDistrito);
		System.out.println(email);
		System.out.println(password);
		System.out.println(celular);
		
//		LocalDate localDateFec = LocalDate.parse("2020-03-08");
	//	System.out.println(localDateFec);
		ClienteDTO clienteDTO = new ClienteDTO(nombre, apePat, apeMat, fecNacimiento, direccion, urbanizacion, idDepartamento, idProvincia, idDistrito, email, password, celular);		
		ClienteServiceImpl clienteServi = new ClienteServiceImpl();
		clienteServi.crear(clienteDTO);
		
		//Enviar
		String mensaje = "Bienvenido! "+ clienteDTO.getNombre();
		request.getSession().setAttribute("cliente", clienteDTO);
		
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher("/Servicios.jsp").forward(request, response);
			
		
	}

	private void mostrarFormRegistro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Ingresó mostrar formulario!");
		String url = "/RegUsuario.jsp";
		
		List<DepartamentoDTO> listDep = GetDepProDis.listarDepartamentoDTO();
		List<ProvinciaDTO> listPro = GetDepProDis.listarProvinciaDTO();
		List<DistritoDTO> listDis = GetDepProDis.listarDistritoDTO();
		
		request.setAttribute("listDepartamento", listDep);
		
		List<ProvinciaDTO> newListPro = listPro.stream().filter(x -> x.getIdDepartamento() == 15).collect(Collectors.toList());
		request.setAttribute("listProvincia", newListPro);
		
		Predicate<DistritoDTO> dep = x -> x.getIdDepartamento() == 15;
		Predicate<DistritoDTO> pro = x -> x.getIdProvincia() == 50;
		
		List<DistritoDTO> newListDis = listDis.stream().filter(dep.and(pro)).collect(Collectors.toList());
				
		request.setAttribute("listDistrito", newListDis);
		
		request.getRequestDispatcher(url).forward(request, response);
		
		
	}

}

