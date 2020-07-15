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
<div id="div-regForm">

<div class="form-title"></div>


<form id="regForm" action="submit.php" method="post">
<table >
<tbody>
<tr>

    <td><label  for="nombre">Nombre</label></td>
    <td><div class="input-container">
    <input name="fname" id="fname" type="text" />
    </div></td>

</tr>
<tr>

    <td><label for="apep">Apellido Paterno</label></td>
    <td><div class="input-container">
    <input name="lname" id="lname" type="text" />
    </div></td>

</tr>
<tr>

    <td><label for="apem">Apellido Materno</label></td>
    <td><div class="input-container">
    <input name="lname" id="lname" type="text" />
    </div></td>

</tr>
<tr>

    <td><label for="fec">Fecha de Nacimiento</label></td>
    <td><div class="input-container">
    <input name="lname" id="fec" type="date" />
    </div></td>

</tr>
<tr>

    <td><label for="direc">Dirección</label></td>
    <td><div class="input-container">
    <input name="lname" id="lname" type="text" />
    </div></td>

</tr>
<tr>

    <td><label for="urb">Urbanización</label></td>
    <td><div class="input-container">
    <input name="lname" id="lname" type="text" />
    </div></td>

</tr>
<tr>

    <td><label for="dept">Departamento</label></td>
    <td>
    <div class="input-container">
    <select name="sex-select" id="dep">
    <option value="0">Select Sex:</option>
    <option value="1">Female</option>
    <option value="2">Male</option>
    </select>

    </div>
    </td>
</tr>
<tr>

    <td><label for="prov">Provincia</label></td>
    <td>
    <div class="input-container">
    <select name="sex-select" id="prov">
    <option value="0">Select Sex:</option>
    <option value="1">Female</option>
    <option value="2">Male</option>
    </select>

    </div>
    </td>
</tr>
<tr>

    <td><label for="dist">Distrito</label></td>
    <td>
    <div class="input-container">
    <select name="sex-select" id="dist">
    <option value="0">Select Sex:</option>
    <option value="1">Female</option>
    <option value="2">Male</option>
    </select>

    </div>
    </td>
</tr>
<tr>

    <td><label for="email">Email</label></td>
    <td><div class="input-container">
    <input name="email" id="email" type="text" />
    </div></td>

</tr>
<tr>

    <td><label for="pass">Password:</label></td>
    <td><div class="input-container">
    <input name="pass" id="pass" type="password" />
    </div></td>

</tr>
<tr>

    <td><label for="cel">N° Celular</label></td>
    <td><div class="input-container">
    <input name="email" id="email" type="text" />
    </div></td>

</tr>

<tr>

    <td>&nbsp;</td>
    <td><input type="submit" class="greenButton" value="Sign Up" />
    <img id="loading" src="img/ajax-loader.gif" alt="working.." />
    </td>

</tr>

</tbody>
</table>

</form>

<div id="error">
&nbsp;
</div>

</div>

<footer><jsp:include page="Refabajo.jsp"></jsp:include></footer>
</body>
</html>