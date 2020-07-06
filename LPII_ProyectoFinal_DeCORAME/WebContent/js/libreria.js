function validaAcceso(correo, clave){

	expr = /^([a-zA-Z0-9_\.-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

	if (!expr.test(correo)){
		alert("Formato de correo incorrecto");
		return 0;
	}

	
	if (clave == ""){
		alert("Error: falta clave");
		return 0;
	}

	expr = /^\w+$/;

	if (!expr.test(clave)){
		alert("Error: La clave debe contener solo letras, numeros!");
		return 0;
	}

	
	alert("correcto");
	window.location.href="registro.html?correo="+correo;
}