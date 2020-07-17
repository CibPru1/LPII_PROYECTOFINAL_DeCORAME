<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeCORAME - Carrito Compras</title>
<link rel="stylesheet" type="text/css" href="css/Carro.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type='text/javascript' src="fly.js"></script>

</head>

<body>
<header><jsp:include page="RArriba.jsp"></jsp:include></header>
<br>
<h1>CARRITO DE COMPRAS</h1>
<div  id=contenedor   style="text-align:center;">

<ct:imagenproducto/>
<ct:imagenproductoVarios codigo="${1}" />

	<table class="table">
  <thead>
    <tr>
      <th class="product-remove">&nbsp;</th>
      <th scope="col">PRODUCTO</th>
      <th scope="col">PRECIO</th>
      <th scope="col">CANTIDAD</th>
      <th scope="col">SUBTOTAL</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td scope="row"><button type="button" class="btn btn-light">ELIMINAR</button></td>
      <td>dwew</td>
      <td>wewe</td>
       <td>
      <div class="Can">
        <input type="button" value="-" class="minus">
        <input type="text" id="quantity_5f0d211d5bb5f" step="1" min="0" max="" name="cart[98f13708210194c475687be6106a3b84][qty]" value="1" title="Qty" class="input-text qty text" size="4" pattern="[0-9]*" inputmode="numeric" aria-labelledby="Plan Basic Wall to Wall quantity">
        <input type="button" value="+" class="plus">
       
      </div>
      </td>
      <td>wewe</td>
    </tr>
    <tr>
    
    
  </tbody>
</table>
<br>
<div class="Tab">
<div class="Tab2">
<table cellspacing="0" class="shop_table shop_table_responsive">
 <thead>
    <tr>
   <th scope="row">TOTAL DE CARRITO</th>
   <th>&nbsp; </th>
    </tr>
    <tr>
    <th>SUBTOTAL </th>
    <td> 50.00 </td>
    </tr>
      <tr>
    <th>TOTAL </th>
    <td> 50.00 </td>
    </tr>
    </thead>
    <br>
    <br>
</table>
</div>
</div>
		<br>
				<br>
						<br>
		<p>Ir a mantenimiento de Ambientes <a href="CrudServicios.jsp">aquí</a></p>
</div>
	<br>
	<br><br>
<footer><jsp:include page="Refabajo.jsp"></jsp:include></footer>
    
    
</body>
</html>