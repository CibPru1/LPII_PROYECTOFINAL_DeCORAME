<%@page import="com.decorame.beans.DistritoDTO"%>
<%@page import="com.decorame.beans.ProvinciaDTO"%>
<%@page import="com.decorame.beans.DepartamentoDTO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="css/registro.css" type="text/css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<header><jsp:include page="RArriba.jsp"></jsp:include></header>

<br>
<h1>Registro</h1>
<div class="container" id="div-regForm">

<div class="form-title"></div>


<form id="regForm" action="cli_serv" method="post">
<table >


  <div class="form-group">
    <label for="nombre">Nombre</label>
    <input type="text" class="form-control" id="nombre" placeholder="Nombre" name="nombre">
  </div>
  
  <div class="form-group">
    <label for="apePat">Apellido paterno</label>
    <input type="text" class="form-control" id="apePat" placeholder="Apellido paterno" name="apePat">
  </div>
  
  <div class="form-group">
    <label for="apeMat">Apellido materno</label>
    <input type="text" class="form-control" id="apeMat" placeholder="Apellido materno" name="apeMat">
  </div>
  

<div class="form-group">
	<label for="fecNac">Fecha de Nacimiento</label>

    <input class="form-control" id="fec" type="date" name="fecNac" />

</div>

  <div class="form-group">
    <label for="direccion">Direccion</label>
    <input type="text" class="form-control" id="direccion" placeholder="Direccion" name="direccion">
  </div>
  
  <div class="form-group">
    <label for="urbanizacion">Urbanización</label>
    <input type="text" class="form-control" id="urbanizacion" placeholder="Urbanización" name="urbanizacion">
  </div>
  
	<div class="form-group">
    	<label for="cboDepartamento">Departamento</label>

				<select class="form-control" id="cboDepartamento" name="cboDepartamento">
					<option>Seleccione Departamento</option>
					<%
						List<DepartamentoDTO> listaDepartamento = (List<DepartamentoDTO>) request.getAttribute("listDepartamento");
						if (listaDepartamento != null)
							for (DepartamentoDTO departamento : listaDepartamento) {
					%>
					<option value="<%=departamento.getIdDepartamento()%>"><%=departamento.getNombre()%></option>
					<%
						}
					%>
				</select>
	</div>

	<div class="form-group">
    	<label for="cboProvincia">Provincia</label>

				<select class="form-control" id="cboProvincia" name="cboProvincia">
					<option>Seleccione Provincia</option>
					<%
						List<ProvinciaDTO> listaProvincia = (List<ProvinciaDTO>) request.getAttribute("listProvincia");
						if (listaProvincia != null)
							for (ProvinciaDTO provincia : listaProvincia) {
					%>
					<option value="<%=provincia.getIdProvincia()%>"><%=provincia.getNombre()%></option>
					<%
						}
					%>
				</select>
	</div>

	<div class="form-group">
    	<label for="cboDistrito">Distrito</label>

				<select class="form-control" id="cboDistrito" name="cboDistrito">
					<option>Seleccione Distrito</option>
					<%
						List<DistritoDTO> listaDistrito = (List<DistritoDTO>) request.getAttribute("listDistrito");
						if (listaProvincia != null)
							for (DistritoDTO distrito : listaDistrito) {
					%>
					<option value="<%=distrito.getIdDistrito()%>"><%=distrito.getNombreDisrito()%></option>
					<%
						}
					%>
				</select>
  </div>
    
  <div class="form-group">
    <label for="email">Email</label>
    <input type="text"class="form-control" id="email" placeholder="Email" name="email">
  </div>
  
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" placeholder="Password" name="password">
  </div>
  
  <div class="form-group">
    <label for="numCel">Numero de celular</label>
    <input type="text" class="form-control" id="numCel" placeholder="N. Celular" name="celuar">
  </div>

  
  <button type="submit" class="btn btn-primary btn-lg btn-block" name="btns" value="r">REGISTRARSE</button>
  
  
<!-- 
<tr>
    <td>&nbsp;</td>
    <td><input type="submit" class="greenButton" value="Sign Up" />
    <img id="loading" src="img/ajax-loader.gif" alt="working.." />
    </td>
</tr>
 -->

</table>

</form>
<!-- 
	<div id="error">
	&nbsp;
	</div>
 -->
</div>

<footer><jsp:include page="Refabajo.jsp"></jsp:include></footer>
</body>
</html>